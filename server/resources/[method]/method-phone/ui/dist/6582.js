"use strict";(self.webpackChunkmethod_phone=self.webpackChunkmethod_phone||[]).push([[6582],{56582:(t,e,r)=>{r.r(e),r.d(e,{default:()=>P});var n=r(67294),o=r(86706),i=r(89250),a=r(6867),c=r(67109),u=r(94659),l=r(94235),f=r(96486),s=r.n(f),p=r(69042),h=r(68174),d=r(67814),v=r(45525);function y(t){return y="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},y(t)}function m(){m=function(){return t};var t={},e=Object.prototype,r=e.hasOwnProperty,n=Object.defineProperty||function(t,e,r){t[e]=r.value},o="function"==typeof Symbol?Symbol:{},i=o.iterator||"@@iterator",a=o.asyncIterator||"@@asyncIterator",c=o.toStringTag||"@@toStringTag";function u(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{u({},"")}catch(t){u=function(t,e,r){return t[e]=r}}function l(t,e,r,o){var i=e&&e.prototype instanceof p?e:p,a=Object.create(i.prototype),c=new S(o||[]);return n(a,"_invoke",{value:O(t,r,c)}),a}function f(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}t.wrap=l;var s={};function p(){}function h(){}function d(){}var v={};u(v,i,(function(){return this}));var g=Object.getPrototypeOf,b=g&&g(g(k([])));b&&b!==e&&r.call(b,i)&&(v=b);var w=d.prototype=p.prototype=Object.create(v);function E(t){["next","throw","return"].forEach((function(e){u(t,e,(function(t){return this._invoke(e,t)}))}))}function x(t,e){function o(n,i,a,c){var u=f(t[n],t,i);if("throw"!==u.type){var l=u.arg,s=l.value;return s&&"object"==y(s)&&r.call(s,"__await")?e.resolve(s.__await).then((function(t){o("next",t,a,c)}),(function(t){o("throw",t,a,c)})):e.resolve(s).then((function(t){l.value=t,a(l)}),(function(t){return o("throw",t,a,c)}))}c(u.arg)}var i;n(this,"_invoke",{value:function(t,r){function n(){return new e((function(e,n){o(t,r,e,n)}))}return i=i?i.then(n,n):n()}})}function O(t,e,r){var n="suspendedStart";return function(o,i){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===o)throw i;return _()}for(r.method=o,r.arg=i;;){var a=r.delegate;if(a){var c=j(a,r);if(c){if(c===s)continue;return c}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===n)throw n="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);n="executing";var u=f(t,e,r);if("normal"===u.type){if(n=r.done?"completed":"suspendedYield",u.arg===s)continue;return{value:u.arg,done:r.done}}"throw"===u.type&&(n="completed",r.method="throw",r.arg=u.arg)}}}function j(t,e){var r=e.method,n=t.iterator[r];if(void 0===n)return e.delegate=null,"throw"===r&&t.iterator.return&&(e.method="return",e.arg=void 0,j(t,e),"throw"===e.method)||"return"!==r&&(e.method="throw",e.arg=new TypeError("The iterator does not provide a '"+r+"' method")),s;var o=f(n,t.iterator,e.arg);if("throw"===o.type)return e.method="throw",e.arg=o.arg,e.delegate=null,s;var i=o.arg;return i?i.done?(e[t.resultName]=i.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,s):i:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,s)}function P(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function L(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function S(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(P,this),this.reset(!0)}function k(t){if(t){var e=t[i];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,o=function e(){for(;++n<t.length;)if(r.call(t,n))return e.value=t[n],e.done=!1,e;return e.value=void 0,e.done=!0,e};return o.next=o}}return{next:_}}function _(){return{value:void 0,done:!0}}return h.prototype=d,n(w,"constructor",{value:d,configurable:!0}),n(d,"constructor",{value:h,configurable:!0}),h.displayName=u(d,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===h||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,d):(t.__proto__=d,u(t,c,"GeneratorFunction")),t.prototype=Object.create(w),t},t.awrap=function(t){return{__await:t}},E(x.prototype),u(x.prototype,a,(function(){return this})),t.AsyncIterator=x,t.async=function(e,r,n,o,i){void 0===i&&(i=Promise);var a=new x(l(e,r,n,o),i);return t.isGeneratorFunction(r)?a:a.next().then((function(t){return t.done?t.value:a.next()}))},E(w),u(w,c,"Generator"),u(w,i,(function(){return this})),u(w,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var e=Object(t),r=[];for(var n in e)r.push(n);return r.reverse(),function t(){for(;r.length;){var n=r.pop();if(n in e)return t.value=n,t.done=!1,t}return t.done=!0,t}},t.values=k,S.prototype={constructor:S,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(L),!t)for(var e in this)"t"===e.charAt(0)&&r.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function n(r,n){return a.type="throw",a.arg=t,e.next=r,n&&(e.method="next",e.arg=void 0),!!n}for(var o=this.tryEntries.length-1;o>=0;--o){var i=this.tryEntries[o],a=i.completion;if("root"===i.tryLoc)return n("end");if(i.tryLoc<=this.prev){var c=r.call(i,"catchLoc"),u=r.call(i,"finallyLoc");if(c&&u){if(this.prev<i.catchLoc)return n(i.catchLoc,!0);if(this.prev<i.finallyLoc)return n(i.finallyLoc)}else if(c){if(this.prev<i.catchLoc)return n(i.catchLoc,!0)}else{if(!u)throw new Error("try statement without catch or finally");if(this.prev<i.finallyLoc)return n(i.finallyLoc)}}}},abrupt:function(t,e){for(var n=this.tryEntries.length-1;n>=0;--n){var o=this.tryEntries[n];if(o.tryLoc<=this.prev&&r.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var i=o;break}}i&&("break"===t||"continue"===t)&&i.tryLoc<=e&&e<=i.finallyLoc&&(i=null);var a=i?i.completion:{};return a.type=t,a.arg=e,i?(this.method="next",this.next=i.finallyLoc,s):this.complete(a)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),s},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),L(r),s}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var n=r.completion;if("throw"===n.type){var o=n.arg;L(r)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:k(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),s}},t}function g(t,e,r,n,o,i,a){try{var c=t[i](a),u=c.value}catch(t){return void r(t)}c.done?e(u):Promise.resolve(u).then(n,o)}function b(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function w(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?b(Object(r),!0).forEach((function(e){E(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):b(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function E(t,e,r){return(e=function(t){var e=function(t,e){if("object"!==y(t)||null===t)return t;var r=t[Symbol.toPrimitive];if(void 0!==r){var n=r.call(t,e||"default");if("object"!==y(n))return n;throw new TypeError("@@toPrimitive must return a primitive value.")}return("string"===e?String:Number)(t)}(t,"string");return"symbol"===y(e)?e:String(e)}(e))in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}function x(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){var r=null==t?null:"undefined"!=typeof Symbol&&t[Symbol.iterator]||t["@@iterator"];if(null!=r){var n,o,i,a,c=[],u=!0,l=!1;try{if(i=(r=r.call(t)).next,0===e){if(Object(r)!==r)return;u=!1}else for(;!(u=(n=i.call(r)).done)&&(c.push(n.value),c.length!==e);u=!0);}catch(t){l=!0,o=t}finally{try{if(!u&&null!=r.return&&(a=r.return(),Object(a)!==a))return}finally{if(l)throw o}}return c}}(t,e)||function(t,e){if(!t)return;if("string"==typeof t)return O(t,e);var r=Object.prototype.toString.call(t).slice(8,-1);"Object"===r&&t.constructor&&(r=t.constructor.name);if("Map"===r||"Set"===r)return Array.from(t);if("Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return O(t,e)}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function O(t,e){(null==e||e>t.length)&&(e=t.length);for(var r=0,n=new Array(e);r<e;r++)n[r]=t[r];return n}var j=(0,l.Z)((function(t){return{form:{height:"100%"},avatar:{height:140,width:140,fontSize:55,color:t.palette.text.light,background:"#00aced",display:"block",textAlign:"center",lineHeight:"140px",margin:"auto","&.pending":{border:"3px solid ".concat(t.palette.warning.main)}},fields:{paddingTop:30},contactHeader:{padding:20,width:"100%",textAlign:"center",position:"relative"},contactName:{fontSize:30,color:t.palette.primary.main},editField:{width:"100%",marginBottom:20,fontSize:20},header:{background:"#00aced",fontSize:20,padding:15,lineHeight:"45px",height:78}}}));const P=function(t){var e,r,l,y,b,O,P,L,S,k,_,N,A=(0,h.VY)(),G=j(),T=(0,i.s0)(),F=(0,o.I0)(),I=(0,o.v9)((function(t){return t.data.data.player})),Z=x((0,n.useState)({name:null!==(e=null===(r=I.Profiles)||void 0===r||null===(l=r.twitter)||void 0===l?void 0:l.name)&&void 0!==e?e:"",picture:null!==(y=null===(b=I.Profiles)||void 0===b||null===(O=b.twitter)||void 0===O?void 0:O.picture)&&void 0!==y?y:""}),2),D=Z[0],U=Z[1],q=x((0,n.useState)({name:null!==(P=null===(L=I.Profiles)||void 0===L||null===(S=L.twitter)||void 0===S?void 0:S.name)&&void 0!==P?P:"",picture:null!==(k=null===(_=I.Profiles)||void 0===_||null===(N=_.twitter)||void 0===N?void 0:N.picture)&&void 0!==k?k:""}),2),z=q[0],C=q[1],H=function(t){C(w(w({},z),{},E({},t.target.name,t.target.value)))},Y=(0,f.throttle)(function(){var t,e=(t=m().mark((function t(e){var r,n;return m().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(!s().isEqual(D,z)){t.next=2;break}return t.abrupt("return");case 2:return t.prev=2,t.next=5,p.Z.send("UpdateProfile",{app:"twitter",name:z.name,picture:z.picture});case 5:return t.next=7,t.sent.json();case 7:t.sent?(F({type:"UPDATE_DATA",payload:{type:"player",id:"Profiles",key:"twitter",data:{sid:I.SID,app:"twitter",name:e.target.name.value,picture:e.target.picture.value,meta:z.meta}}}),U({name:null!==(r=null==z?void 0:z.name)&&void 0!==r?r:"",picture:null!==(n=null==z?void 0:z.picture)&&void 0!==n?n:""}),A("Profile Updated")):A("Unable To Update Profile"),t.next=16;break;case 11:t.prev=11,t.t0=t.catch(2),console.error(t.t0),C(w(w({},z),D)),A("Failed Updating Profile");case 16:case"end":return t.stop()}}),t,null,[[2,11]])})),function(){var e=this,r=arguments;return new Promise((function(n,o){var i=t.apply(e,r);function a(t){g(i,n,o,a,c,"next",t)}function c(t){g(i,n,o,a,c,"throw",t)}a(void 0)}))});return function(t){return e.apply(this,arguments)}}(),5e3);return n.createElement("form",{className:G.form,id:"profile-form",onSubmit:function(t){t.preventDefault(),s().isEqual(D,z)||Y(t)}},n.createElement(v.zj,{appId:"twitter",actions:n.createElement(n.Fragment,null,n.createElement(a.Z,{onClick:function(){return T(-1)}},n.createElement(d.G,{icon:"chevron-left"})),!s().isEqual(D,z)&&n.createElement(a.Z,{type:"submit"},n.createElement(d.G,{icon:["fas","floppy-disks"]})))},n.createElement("div",{className:G.contactHeader},Boolean(z.picture)?n.createElement(c.Z,{className:"".concat(G.avatar).concat(s().isEqual(D,z)?"":" pending"),src:z.picture,alt:z.name.charAt(0)}):n.createElement(c.Z,{className:"".concat(G.avatar).concat(s().isEqual(D,z)?"":" pending")},n.createElement(d.G,{icon:["fas","user"]})),n.createElement("div",{className:G.fields},n.createElement(u.Z,{required:!0,className:G.editField,label:"Username",name:"name",type:"text",onChange:H,value:z.name,inputProps:{pattern:"[a-zA-Z0-9_-]+",maxLength:64}}),n.createElement(u.Z,{className:G.editField,label:"Avatar Link",name:"picture",type:"text",onChange:H,value:z.picture,inputProps:{maxLength:512}})))))}}}]);