"use strict";(self.webpackChunksandbox_laptop=self.webpackChunksandbox_laptop||[]).push([[204],{70204:(t,e,r)=>{r.r(e),r.d(e,{default:()=>P});var n=r(89526),o=r(92070),i=r(63049),a=r(50871),c=r(9717),u=r(12370),l=r(51070),s=r(60514),f=r(23121),p=r(74484),h=(r(53059),r(36105),r(21447)),d=r(24963),m=r(89813);function v(t){return v="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},v(t)}function y(t,e){var r=Object.keys(t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(t);e&&(n=n.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),r.push.apply(r,n)}return r}function g(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{};e%2?y(Object(r),!0).forEach((function(e){b(t,e,r[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(r)):y(Object(r)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(r,e))}))}return t}function b(t,e,r){return(e=function(t){var e=function(t,e){if("object"!==v(t)||null===t)return t;var r=t[Symbol.toPrimitive];if(void 0!==r){var n=r.call(t,e||"default");if("object"!==v(n))return n;throw new TypeError("@@toPrimitive must return a primitive value.")}return("string"===e?String:Number)(t)}(t,"string");return"symbol"===v(e)?e:String(e)}(e))in t?Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}):t[e]=r,t}function w(){w=function(){return t};var t={},e=Object.prototype,r=e.hasOwnProperty,n=Object.defineProperty||function(t,e,r){t[e]=r.value},o="function"==typeof Symbol?Symbol:{},i=o.iterator||"@@iterator",a=o.asyncIterator||"@@asyncIterator",c=o.toStringTag||"@@toStringTag";function u(t,e,r){return Object.defineProperty(t,e,{value:r,enumerable:!0,configurable:!0,writable:!0}),t[e]}try{u({},"")}catch(t){u=function(t,e,r){return t[e]=r}}function l(t,e,r,o){var i=e&&e.prototype instanceof p?e:p,a=Object.create(i.prototype),c=new k(o||[]);return n(a,"_invoke",{value:O(t,r,c)}),a}function s(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(t){return{type:"throw",arg:t}}}t.wrap=l;var f={};function p(){}function h(){}function d(){}var m={};u(m,i,(function(){return this}));var y=Object.getPrototypeOf,g=y&&y(y(S([])));g&&g!==e&&r.call(g,i)&&(m=g);var b=d.prototype=p.prototype=Object.create(m);function x(t){["next","throw","return"].forEach((function(e){u(t,e,(function(t){return this._invoke(e,t)}))}))}function E(t,e){function o(n,i,a,c){var u=s(t[n],t,i);if("throw"!==u.type){var l=u.arg,f=l.value;return f&&"object"==v(f)&&r.call(f,"__await")?e.resolve(f.__await).then((function(t){o("next",t,a,c)}),(function(t){o("throw",t,a,c)})):e.resolve(f).then((function(t){l.value=t,a(l)}),(function(t){return o("throw",t,a,c)}))}c(u.arg)}var i;n(this,"_invoke",{value:function(t,r){function n(){return new e((function(e,n){o(t,r,e,n)}))}return i=i?i.then(n,n):n()}})}function O(t,e,r){var n="suspendedStart";return function(o,i){if("executing"===n)throw new Error("Generator is already running");if("completed"===n){if("throw"===o)throw i;return _()}for(r.method=o,r.arg=i;;){var a=r.delegate;if(a){var c=j(a,r);if(c){if(c===f)continue;return c}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if("suspendedStart"===n)throw n="completed",r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);n="executing";var u=s(t,e,r);if("normal"===u.type){if(n=r.done?"completed":"suspendedYield",u.arg===f)continue;return{value:u.arg,done:r.done}}"throw"===u.type&&(n="completed",r.method="throw",r.arg=u.arg)}}}function j(t,e){var r=e.method,n=t.iterator[r];if(void 0===n)return e.delegate=null,"throw"===r&&t.iterator.return&&(e.method="return",e.arg=void 0,j(t,e),"throw"===e.method)||"return"!==r&&(e.method="throw",e.arg=new TypeError("The iterator does not provide a '"+r+"' method")),f;var o=s(n,t.iterator,e.arg);if("throw"===o.type)return e.method="throw",e.arg=o.arg,e.delegate=null,f;var i=o.arg;return i?i.done?(e[t.resultName]=i.value,e.next=t.nextLoc,"return"!==e.method&&(e.method="next",e.arg=void 0),e.delegate=null,f):i:(e.method="throw",e.arg=new TypeError("iterator result is not an object"),e.delegate=null,f)}function L(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function P(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function k(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(L,this),this.reset(!0)}function S(t){if(t){var e=t[i];if(e)return e.call(t);if("function"==typeof t.next)return t;if(!isNaN(t.length)){var n=-1,o=function e(){for(;++n<t.length;)if(r.call(t,n))return e.value=t[n],e.done=!1,e;return e.value=void 0,e.done=!0,e};return o.next=o}}return{next:_}}function _(){return{value:void 0,done:!0}}return h.prototype=d,n(b,"constructor",{value:d,configurable:!0}),n(d,"constructor",{value:h,configurable:!0}),h.displayName=u(d,c,"GeneratorFunction"),t.isGeneratorFunction=function(t){var e="function"==typeof t&&t.constructor;return!!e&&(e===h||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,d):(t.__proto__=d,u(t,c,"GeneratorFunction")),t.prototype=Object.create(b),t},t.awrap=function(t){return{__await:t}},x(E.prototype),u(E.prototype,a,(function(){return this})),t.AsyncIterator=E,t.async=function(e,r,n,o,i){void 0===i&&(i=Promise);var a=new E(l(e,r,n,o),i);return t.isGeneratorFunction(r)?a:a.next().then((function(t){return t.done?t.value:a.next()}))},x(b),u(b,c,"Generator"),u(b,i,(function(){return this})),u(b,"toString",(function(){return"[object Generator]"})),t.keys=function(t){var e=Object(t),r=[];for(var n in e)r.push(n);return r.reverse(),function t(){for(;r.length;){var n=r.pop();if(n in e)return t.value=n,t.done=!1,t}return t.done=!0,t}},t.values=S,k.prototype={constructor:k,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(P),!t)for(var e in this)"t"===e.charAt(0)&&r.call(this,e)&&!isNaN(+e.slice(1))&&(this[e]=void 0)},stop:function(){this.done=!0;var t=this.tryEntries[0].completion;if("throw"===t.type)throw t.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var e=this;function n(r,n){return a.type="throw",a.arg=t,e.next=r,n&&(e.method="next",e.arg=void 0),!!n}for(var o=this.tryEntries.length-1;o>=0;--o){var i=this.tryEntries[o],a=i.completion;if("root"===i.tryLoc)return n("end");if(i.tryLoc<=this.prev){var c=r.call(i,"catchLoc"),u=r.call(i,"finallyLoc");if(c&&u){if(this.prev<i.catchLoc)return n(i.catchLoc,!0);if(this.prev<i.finallyLoc)return n(i.finallyLoc)}else if(c){if(this.prev<i.catchLoc)return n(i.catchLoc,!0)}else{if(!u)throw new Error("try statement without catch or finally");if(this.prev<i.finallyLoc)return n(i.finallyLoc)}}}},abrupt:function(t,e){for(var n=this.tryEntries.length-1;n>=0;--n){var o=this.tryEntries[n];if(o.tryLoc<=this.prev&&r.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var i=o;break}}i&&("break"===t||"continue"===t)&&i.tryLoc<=e&&e<=i.finallyLoc&&(i=null);var a=i?i.completion:{};return a.type=t,a.arg=e,i?(this.method="next",this.next=i.finallyLoc,f):this.complete(a)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),f},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),P(r),f}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var n=r.completion;if("throw"===n.type){var o=n.arg;P(r)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(t,e,r){return this.delegate={iterator:S(t),resultName:e,nextLoc:r},"next"===this.method&&(this.arg=void 0),f}},t}function x(t,e,r,n,o,i,a){try{var c=t[i](a),u=c.value}catch(t){return void r(t)}c.done?e(u):Promise.resolve(u).then(n,o)}function E(t){return function(){var e=this,r=arguments;return new Promise((function(n,o){var i=t.apply(e,r);function a(t){x(i,n,o,a,c,"next",t)}function c(t){x(i,n,o,a,c,"throw",t)}a(void 0)}))}}function O(t,e){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){var r=null==t?null:"undefined"!=typeof Symbol&&t[Symbol.iterator]||t["@@iterator"];if(null!=r){var n,o,i,a,c=[],u=!0,l=!1;try{if(i=(r=r.call(t)).next,0===e){if(Object(r)!==r)return;u=!1}else for(;!(u=(n=i.call(r)).done)&&(c.push(n.value),c.length!==e);u=!0);}catch(t){l=!0,o=t}finally{try{if(!u&&null!=r.return&&(a=r.return(),Object(a)!==a))return}finally{if(l)throw o}}return c}}(t,e)||function(t,e){if(!t)return;if("string"==typeof t)return j(t,e);var r=Object.prototype.toString.call(t).slice(8,-1);"Object"===r&&t.constructor&&(r=t.constructor.name);if("Map"===r||"Set"===r)return Array.from(t);if("Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return j(t,e)}(t,e)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function j(t,e){(null==e||e>t.length)&&(e=t.length);for(var r=0,n=new Array(e);r<e;r++)n[r]=t[r];return n}var L=(0,p.Z)((function(t){return{wrapper:{padding:"20px 10px 20px 20px",height:"95%"},editorField:{marginBottom:10},title:{fontSize:22,color:t.palette.text.main,textAlign:"center"},col:{height:"100%",padding:5},formActions:{paddingBottom:10,marginBottom:5,borderBottom:"1px inset ".concat(t.palette.border.divider)},positiveButton:{borderColor:"".concat(t.palette.success.main,"80"),color:t.palette.success.main,"&:hover":{borderColor:t.palette.success.main,background:"".concat(t.palette.success.main,"14")}}}}));const P=function(t){var e=t.onNav,r=t.data,p=L(),v=((0,o.I0)(),(0,m.VY)()),y=(0,m.Gt)(),b=(0,o.v9)((function(t){return t.data.data.onDuty})),x=O((0,n.useState)(!1),2),j=x[0],P=x[1],k=O((0,n.useState)({title:"",notes:"",pinned:!1}),2),S=k[0],_=k[1],D=y("TABLET_PIN_DOCUMENT",b);(0,n.useEffect)((function(){var t=function(){var t=E(w().mark((function t(e){var r;return w().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return P(!0),t.prev=1,t.next=4,h.Z.send("BusinessDocumentView",{id:e});case 4:return t.next=6,t.sent.json();case 6:(r=t.sent)&&_(r),t.next=14;break;case 10:t.prev=10,t.t0=t.catch(1),console.log(t.t0),v("Unable to Load Document");case 14:P(!1);case 15:case"end":return t.stop()}}),t,null,[[1,10]])})));return function(e){return t.apply(this,arguments)}}();null!=r&&r.id&&t(r.id)}),[]);var N=function(){var t=E(w().mark((function t(r){var n;return w().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(r.preventDefault(),""!=S.title){t.next=5;break}v("Must Add Title"),t.next=32;break;case 5:if(""!=S.notes){t.next=9;break}v("Must Add Content"),t.next=32;break;case 9:if(t.prev=9,!Boolean(null==S?void 0:S._id)){t.next=20;break}return t.next=13,h.Z.send("BusinessDocumentUpdate",{id:S._id,Report:{title:S.title,pinned:S.pinned,notes:S.notes,time:S.time,author:S.author}});case 13:return t.next=15,t.sent.json();case 15:t.sent?e("View/Document",{id:S._id}):v("Unable to Update Document"),t.next=26;break;case 20:return t.next=22,h.Z.send("BusinessDocumentCreate",{doc:{title:S.title,pinned:S.pinned,notes:S.notes,time:Date.now()}});case 22:return t.next=24,t.sent.json();case 24:(n=t.sent)?e("View/Document",{id:n._id}):v("Unable to Create Document");case 26:t.next=32;break;case 28:t.prev=28,t.t0=t.catch(9),console.log(t.t0),v("Unable to Create Document");case 32:case"end":return t.stop()}}),t,null,[[9,28]])})));return function(e){return t.apply(this,arguments)}}();return n.createElement("div",{className:p.wrapper},n.createElement(i.Z,{open:j,style:{zIndex:100}},n.createElement(d.aN,{text:"Loading"})),n.createElement(a.ZP,{container:!0,style:{height:"100%",paddingBottom:10},spacing:2},n.createElement(a.ZP,{item:!0,xs:12},n.createElement(a.ZP,{container:!0,className:p.formActions},n.createElement(a.ZP,{item:!0,xs:1,style:{textAlign:"left"}},n.createElement(c.Z,{control:n.createElement(u.Z,{checked:S.pinned,onChange:function(t){_(g(g({},S),{},{pinned:t.target.checked}))},disabled:!D,name:"pinned",color:"primary"}),label:"Pinned"})),n.createElement(a.ZP,{item:!0,xs:9},n.createElement("div",{className:p.title},Boolean(null==S?void 0:S._id)?"".concat(null==S?void 0:S.title):"New Document")),n.createElement(a.ZP,{item:!0,xs:2,style:{textAlign:"right"}},n.createElement(l.Z,{fullWidth:!0,color:"inherit"},n.createElement(s.Z,{className:p.positiveButton,onClick:N},"".concat(Boolean(null==S?void 0:S._id)?"Edit":"Create"," Document")))))),n.createElement(a.ZP,{item:!0,xs:12,className:p.col},n.createElement(f.Z,{className:p.editorField,label:"Document Title",fullWidth:!0,placeholder:"Document Title",value:S.title,onChange:function(t){return _(g(g({},S),{},{title:t.target.value}))}}),!j&&n.createElement(d.ML,{allowMedia:!0,name:"notes",title:"Document Notes",placeholder:"Enter Document Content",disabled:j,value:S.notes,onChange:function(t){_(g(g({},S),{},{notes:t.target.value}))},style:{maxHeight:300,overflowY:"scroll"}}))))}}}]);