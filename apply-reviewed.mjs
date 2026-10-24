import assert from 'node:assert/strict';
import {execFileSync,spawnSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...a)=>execFileSync('calcit',a,{encoding:'utf8',maxBuffer:32e6,stdio:['ignore','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=p=>execFileSync('git',['hash-object',p],{encoding:'utf8'}).trim();
mkdirSync('acceptance',{recursive:true});assert.equal(run('-v').trim(),'0.30.1');assert.equal(blob('calcit.cirru'),'da85545d2fec8ca94cc21d5669f4407edb1bf5be');
writeFileSync('acceptance/agent-contract.txt',run('docs','agents','--contract'));
const before=norm(JSON.parse(readFileSync('reviewed.json','utf8'))),expected=structuredClone(before),ops=[],types=[],counts={};
assert.equal(before.length,49);assert.equal(before.reduce((n,d)=>n+d.tests.length,0),6);assert.equal(before.reduce((n,d)=>n+d.examples.length,0),0);
const config=q('config'),namespaces=q('ns').namespaces.map(n=>q('ns',n));
function walk(x,path,id,region){
  if(!Array.isArray(x)||['quote','quasiquote',';','comment','defmacro'].includes(x[0]))return x;
  if(region==='code'&&id==='gen-code.core/new-abort-controller!'&&JSON.stringify(path)==='[3]'){
    assert.deepEqual(x,['unsafe-coerce',['new','js/AbortController'],'AbortControllerHost']);
    assert.deepEqual(q('def','gen-code.core/AbortControllerHost').code,['deftrait','AbortControllerHost',[':signal',"'JsObject"],['.abort',['::',"'Fn",['{}',[':args',['[]']],[':return',"'Unit"]]]]]);
    assert.equal(JSON.parse(run('tree','show',id,'--path','@3.0','--format','json')).tree,'unsafe-coerce');ops.push(['tree','replace',id,'--path','@3.0','--input-format','json-ast','--code',JSON.stringify('js-cast'),'--expect','quote unsafe-coerce']);x[0]='js-cast';counts.checkedAbort=1;
  }
  const alias={'option:unwrap-or':'.unwrap-or','option:unwrap':'.unwrap','option:none?':'.none?'}[x[0]];
  if(alias){
    assert.equal(region,'code');const old=x[0],p='@'+[...path,0].join('.');
    const r=spawnSync('calcit',['query','type-at',id,'--path','@'+[...path,1].join('.'),'--format','json'],{encoding:'utf8',maxBuffer:32e6});assert.equal(r.status,0);const evidence=JSON.parse(r.stdout);types.push({id,path,tree:structuredClone(x),evidence,stderr:r.stderr});assert.ok(evidence.data.inferred_type?.includes('Option'));assert.deepEqual(evidence.diagnostics,[]);
    assert.equal(JSON.parse(run('tree','show',id,'--path',p,'--format','json')).tree,old);ops.push(['tree','replace',id,'--path',p,'--input-format','json-ast','--code',JSON.stringify(alias),'--expect','quote '+old]);x[0]=alias;counts[old]=(counts[old]||0)+1;
  }
  if(['%some','%none'].includes(x[0])){assert.equal(region,'test');assert.equal(id,'gen-code.schema/decode-gen-code-op');const old=x[0];counts[old]=(counts[old]||0)+1;return ['Option',old==='%some'?':some':':none',...x.slice(1).map((v,i)=>walk(v,[...path,i+1],id,region))];}
  return x.map((v,i)=>walk(v,[...path,i],id,region));
}
for(const d of expected){const old=before.find(x=>x.id===d.id);assert.deepEqual(q('def',d.id),old);d.code=walk(d.code,[],d.id,'code');for(let i=0;i<d.tests.length;i++){const t=d.tests[i];t.code=walk(t.code,[],d.id,'test');if(JSON.stringify(t.code)!==JSON.stringify(old.tests[i].code))ops.push(['edit','add-test',d.id,t.name,'--overwrite',...(t.tags.length?['--tags',t.tags.join(',')]:[]),'--input-format','json-ast','--code',JSON.stringify(t.code)]);}}
assert.equal(counts['option:unwrap-or'],9);assert.equal(counts['option:none?'],1);assert.equal(counts['option:unwrap'],1);assert.equal(counts['%some'],1);assert.equal(counts['%none'],2);assert.equal(counts.checkedAbort,1);assert.equal(ops.length,15);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/receiver-types.json',JSON.stringify(types,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/transaction-preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/transaction-applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const actual=[];for(const ns of namespaces){const names=run('query','defs',ns.namespace).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,ns.definition_count);for(const n of names)actual.push(q('def',`${ns.namespace}/${n}`));}assert.deepEqual(actual,expected);assert.deepEqual(q('config'),config);assert.deepEqual(q('ns').namespaces.map(ns=>q('ns',ns)),namespaces);
writeFileSync('acceptance/after.json',JSON.stringify(actual,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob('calcit.cirru'));writeFileSync('acceptance/summary.json',JSON.stringify({definitions:49,tests:6,examples:0,operations:15,counts,preserved:'All original6test names/order/tags/assertions modulo nominal Option constructors; schemas/FFI/metadata/imports/config/HUD/defaults/model/SDK/storage unchanged. AbortController constructor receives actual shallow host validation; sourceunsafe4→3, three other real SDK/optional-field boundaries retained, no false zero claim.'},null,2));
