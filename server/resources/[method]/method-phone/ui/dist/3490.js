"use strict";(self.webpackChunkmethod_phone=self.webpackChunkmethod_phone||[]).push([[3490,1977,1176],{91977:(e,t,n)=>{n.r(t),n.d(t,{acceptCall:()=>o,dismissIncoming:()=>c,endCall:()=>a,readCalls:()=>i,showIncoming:()=>l});var r=n(69042),o=function(e){return function(t){r.Z.send("AcceptCall",e)}},a=function(){return function(e){r.Z.send("EndCall",null)}},i=function(){return function(e){r.Z.send("ReadCalls",null)}},c=function(){return function(e){e({type:"DISMISS_INCOMING"})}},l=function(){return function(e){e({type:"SHOW_INCOMING"})}}},73490:(e,t,n)=>{n.r(t),n.d(t,{default:()=>f});var r=n(67294),o=n(86706),a=n(89250),i=n(94235),c=n(61176),l=n(91977),u=n(68174),s=(0,i.Z)((function(e){return{wrapper:{height:"100%",background:e.palette.secondary.main},limitedWrapper:{height:"100%",background:e.palette.secondary.main}}}));const f=(0,o.$j)(null,{readCalls:l.readCalls})((function(e){var t=(0,u.Ov)("phone"),n=s(t),i=(0,a.s0)(),l=(0,o.v9)((function(e){return e.phone.limited})),f=(0,o.v9)((function(e){return e.call.call})),p=(0,o.v9)((function(e){return e.data.data.calls}));return(0,r.useEffect)((function(){p.filter((function(e){return Boolean(e)&&e.unread})).length>0&&e.readCalls()}),[p]),(0,r.useEffect)((function(){null!=f&&1!=f.state&&i("/apps/phone/call/".concat(f.number))}),[]),r.createElement(r.Fragment,null,l?r.createElement("div",{className:n.limitedWrapper},r.createElement(c.default,null)):r.createElement(c.default,null))}))},61176:(e,t,n)=>{n.r(t),n.d(t,{default:()=>k});var r=n(67294),o=n(86706),a=n(89250),i=n(79332),c=n(6867),l=n(15725),u=n(72642),s=n(94235),f=n(76627),p=n.n(f),m=n(67814),h=n(68174),d=n(69042);function y(e){return y="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},y(e)}function v(){v=function(){return e};var e={},t=Object.prototype,n=t.hasOwnProperty,r=Object.defineProperty||function(e,t,n){e[t]=n.value},o="function"==typeof Symbol?Symbol:{},a=o.iterator||"@@iterator",i=o.asyncIterator||"@@asyncIterator",c=o.toStringTag||"@@toStringTag";function l(e,t,n){return Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}),e[t]}try{l({},"")}catch(e){l=function(e,t,n){return e[t]=n}}function u(e,t,n,o){var a=t&&t.prototype instanceof p?t:p,i=Object.create(a.prototype),c=new S(o||[]);return r(i,"_invoke",{value:k(e,n,c)}),i}function s(e,t,n){try{return{type:"normal",arg:e.call(t,n)}}catch(e){return{type:"throw",arg:e}}}e.wrap=u;var f={};function p(){}function m(){}function h(){}var d={};l(d,a,(function(){return this}));var g=Object.getPrototypeOf,b=g&&g(g(_([])));b&&b!==t&&n.call(b,a)&&(d=b);var E=h.prototype=p.prototype=Object.create(d);function w(e){["next","throw","return"].forEach((function(t){l(e,t,(function(e){return this._invoke(t,e)}))}))}function x(e,t){function o(r,a,i,c){var l=s(e[r],e,a);if("throw"!==l.type){var u=l.arg,f=u.value;return f&&"object"==y(f)&&n.call(f,"__await")?t.resolve(f.__await).then((function(e){o("next",e,i,c)}),(function(e){o("throw",e,i,c)})):t.resolve(f).then((function(e){u.value=e,i(u)}),(function(e){return o("throw",e,i,c)}))}c(l.arg)}var a;r(this,"_invoke",{value:function(e,n){function r(){return new t((function(t,r){o(e,n,t,r)}))}return a=a?a.then(r,r):r()}})}function k(e,t,n){var r="suspendedStart";return function(o,a){if("executing"===r)throw new Error("Generator is already running");if("completed"===r){if("throw"===o)throw a;return P()}for(n.method=o,n.arg=a;;){var i=n.delegate;if(i){var c=C(i,n);if(c){if(c===f)continue;return c}}if("next"===n.method)n.sent=n._sent=n.arg;else if("throw"===n.method){if("suspendedStart"===r)throw r="completed",n.arg;n.dispatchException(n.arg)}else"return"===n.method&&n.abrupt("return",n.arg);r="executing";var l=s(e,t,n);if("normal"===l.type){if(r=n.done?"completed":"suspendedYield",l.arg===f)continue;return{value:l.arg,done:n.done}}"throw"===l.type&&(r="completed",n.method="throw",n.arg=l.arg)}}}function C(e,t){var n=t.method,r=e.iterator[n];if(void 0===r)return t.delegate=null,"throw"===n&&e.iterator.return&&(t.method="return",t.arg=void 0,C(e,t),"throw"===t.method)||"return"!==n&&(t.method="throw",t.arg=new TypeError("The iterator does not provide a '"+n+"' method")),f;var o=s(r,e.iterator,t.arg);if("throw"===o.type)return t.method="throw",t.arg=o.arg,t.delegate=null,f;var a=o.arg;return a?a.done?(t[e.resultName]=a.value,t.next=e.nextLoc,"return"!==t.method&&(t.method="next",t.arg=void 0),t.delegate=null,f):a:(t.method="throw",t.arg=new TypeError("iterator result is not an object"),t.delegate=null,f)}function Z(e){var t={tryLoc:e[0]};1 in e&&(t.catchLoc=e[1]),2 in e&&(t.finallyLoc=e[2],t.afterLoc=e[3]),this.tryEntries.push(t)}function N(e){var t=e.completion||{};t.type="normal",delete t.arg,e.completion=t}function S(e){this.tryEntries=[{tryLoc:"root"}],e.forEach(Z,this),this.reset(!0)}function _(e){if(e){var t=e[a];if(t)return t.call(e);if("function"==typeof e.next)return e;if(!isNaN(e.length)){var r=-1,o=function t(){for(;++r<e.length;)if(n.call(e,r))return t.value=e[r],t.done=!1,t;return t.value=void 0,t.done=!0,t};return o.next=o}}return{next:P}}function P(){return{value:void 0,done:!0}}return m.prototype=h,r(E,"constructor",{value:h,configurable:!0}),r(h,"constructor",{value:m,configurable:!0}),m.displayName=l(h,c,"GeneratorFunction"),e.isGeneratorFunction=function(e){var t="function"==typeof e&&e.constructor;return!!t&&(t===m||"GeneratorFunction"===(t.displayName||t.name))},e.mark=function(e){return Object.setPrototypeOf?Object.setPrototypeOf(e,h):(e.__proto__=h,l(e,c,"GeneratorFunction")),e.prototype=Object.create(E),e},e.awrap=function(e){return{__await:e}},w(x.prototype),l(x.prototype,i,(function(){return this})),e.AsyncIterator=x,e.async=function(t,n,r,o,a){void 0===a&&(a=Promise);var i=new x(u(t,n,r,o),a);return e.isGeneratorFunction(n)?i:i.next().then((function(e){return e.done?e.value:i.next()}))},w(E),l(E,c,"Generator"),l(E,a,(function(){return this})),l(E,"toString",(function(){return"[object Generator]"})),e.keys=function(e){var t=Object(e),n=[];for(var r in t)n.push(r);return n.reverse(),function e(){for(;n.length;){var r=n.pop();if(r in t)return e.value=r,e.done=!1,e}return e.done=!0,e}},e.values=_,S.prototype={constructor:S,reset:function(e){if(this.prev=0,this.next=0,this.sent=this._sent=void 0,this.done=!1,this.delegate=null,this.method="next",this.arg=void 0,this.tryEntries.forEach(N),!e)for(var t in this)"t"===t.charAt(0)&&n.call(this,t)&&!isNaN(+t.slice(1))&&(this[t]=void 0)},stop:function(){this.done=!0;var e=this.tryEntries[0].completion;if("throw"===e.type)throw e.arg;return this.rval},dispatchException:function(e){if(this.done)throw e;var t=this;function r(n,r){return i.type="throw",i.arg=e,t.next=n,r&&(t.method="next",t.arg=void 0),!!r}for(var o=this.tryEntries.length-1;o>=0;--o){var a=this.tryEntries[o],i=a.completion;if("root"===a.tryLoc)return r("end");if(a.tryLoc<=this.prev){var c=n.call(a,"catchLoc"),l=n.call(a,"finallyLoc");if(c&&l){if(this.prev<a.catchLoc)return r(a.catchLoc,!0);if(this.prev<a.finallyLoc)return r(a.finallyLoc)}else if(c){if(this.prev<a.catchLoc)return r(a.catchLoc,!0)}else{if(!l)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return r(a.finallyLoc)}}}},abrupt:function(e,t){for(var r=this.tryEntries.length-1;r>=0;--r){var o=this.tryEntries[r];if(o.tryLoc<=this.prev&&n.call(o,"finallyLoc")&&this.prev<o.finallyLoc){var a=o;break}}a&&("break"===e||"continue"===e)&&a.tryLoc<=t&&t<=a.finallyLoc&&(a=null);var i=a?a.completion:{};return i.type=e,i.arg=t,a?(this.method="next",this.next=a.finallyLoc,f):this.complete(i)},complete:function(e,t){if("throw"===e.type)throw e.arg;return"break"===e.type||"continue"===e.type?this.next=e.arg:"return"===e.type?(this.rval=this.arg=e.arg,this.method="return",this.next="end"):"normal"===e.type&&t&&(this.next=t),f},finish:function(e){for(var t=this.tryEntries.length-1;t>=0;--t){var n=this.tryEntries[t];if(n.finallyLoc===e)return this.complete(n.completion,n.afterLoc),N(n),f}},catch:function(e){for(var t=this.tryEntries.length-1;t>=0;--t){var n=this.tryEntries[t];if(n.tryLoc===e){var r=n.completion;if("throw"===r.type){var o=r.arg;N(n)}return o}}throw new Error("illegal catch attempt")},delegateYield:function(e,t,n){return this.delegate={iterator:_(e),resultName:t,nextLoc:n},"next"===this.method&&(this.arg=void 0),f}},e}function g(e,t,n,r,o,a,i){try{var c=e[a](i),l=c.value}catch(e){return void n(e)}c.done?t(l):Promise.resolve(l).then(r,o)}function b(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){var n=null==e?null:"undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(null!=n){var r,o,a,i,c=[],l=!0,u=!1;try{if(a=(n=n.call(e)).next,0===t){if(Object(n)!==n)return;l=!1}else for(;!(l=(r=a.call(n)).done)&&(c.push(r.value),c.length!==t);l=!0);}catch(e){u=!0,o=e}finally{try{if(!l&&null!=n.return&&(i=n.return(),Object(i)!==i))return}finally{if(u)throw o}}return c}}(e,t)||function(e,t){if(!e)return;if("string"==typeof e)return E(e,t);var n=Object.prototype.toString.call(e).slice(8,-1);"Object"===n&&e.constructor&&(n=e.constructor.name);if("Map"===n||"Set"===n)return Array.from(e);if("Arguments"===n||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return E(e,t)}(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function E(e,t){(null==t||t>e.length)&&(t=e.length);for(var n=0,r=new Array(t);n<t;n++)r[n]=e[n];return r}function w(e,t,n){return(t=function(e){var t=function(e,t){if("object"!==y(e)||null===e)return e;var n=e[Symbol.toPrimitive];if(void 0!==n){var r=n.call(e,t||"default");if("object"!==y(r))return r;throw new TypeError("@@toPrimitive must return a primitive value.")}return("string"===t?String:Number)(e)}(e,"string");return"symbol"===y(t)?t:String(t)}(t))in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}var x=(0,s.Z)((function(e){var t;return{keypad:{height:"100%",display:"flex",flexDirection:"column",padding:16,background:e.palette.secondary.main},infoContainer:(t={width:"fit-content",margin:"auto"},w(t,"margin","auto"),w(t,"position","relative"),w(t,"height","25%"),w(t,"width","100%"),t),inner:{width:"100%",position:"absolute",height:"fit-content",top:0,bottom:0,left:0,right:0,margin:"auto"},callData:{textAlign:"center",fontSize:18,fontWeight:"bold",maxWidth:"85%",overflow:"hidden",textOverflow:"ellipsis",whiteSpace:"nowrap",margin:"auto"},input:{maxWidth:"85%",width:"100%",margin:"auto",display:"flex"},keys:{flexGrow:1},keypadBtn:{textAlign:"center",height:75,fontSize:"24px",width:"100%","&.nav":{color:e.palette.text.main,"&:hover":{backgroundColor:"".concat(e.palette.text.alt,"14")}},"&.call:not(.disabled)":{color:e.palette.success.light,"&:hover":{backgroundColor:"".concat(e.palette.success.dark,"80")}}}}}));const k=function(e){var t=(0,h.VY)(),n=x(),s=(0,a.s0)(),f=(0,o.v9)((function(e){return e.phone.limited})),y=(0,o.v9)((function(e){return e.data.data.contacts})),E=(0,o.v9)((function(e){return e.data.data.player})),w=(0,o.v9)((function(e){return e.call.call})),k=b((0,r.useState)(!1),2),C=k[0],Z=(k[1],b((0,r.useState)(""),2)),N=Z[0],S=Z[1],_=b((0,r.useState)(null),2),P=_[0],L=_[1];(0,r.useEffect)((function(){L(""==N||f?null:y.filter((function(e){return e.number.startsWith(N.replace(/\_/g,""))}))[0])}),[N]);var O=function(e){S(e.target.value)},j=function(e){S(N.substring(0,N.length-1))},B=function(){var e,n=(e=v().mark((function e(n){return v().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(12!=N.length){e.next=19;break}if(N===E.Phone){e.next=18;break}if(null!=w){e.next=16;break}return e.prev=3,e.next=6,d.Z.send("CreateCall",{number:N,limited:f,isAnon:C});case 6:return e.next=8,e.sent.json();case 8:e.sent?s("/apps/phone/call/".concat(N)):t("Unable To Start Call"),e.next=16;break;case 12:e.prev=12,e.t0=e.catch(3),console.error(e.t0),t("Unable To Start Call");case 16:e.next=19;break;case 18:t("Cannot Call Yourself, Idiot");case 19:case"end":return e.stop()}}),e,null,[[3,12]])})),function(){var t=this,n=arguments;return new Promise((function(r,o){var a=e.apply(t,n);function i(e){g(a,r,o,i,c,"next",e)}function c(e){g(a,r,o,i,c,"throw",e)}i(void 0)}))});return function(e){return n.apply(this,arguments)}}(),I=function(e){var t=N.replace(/\-/g,"").replace(/\_/g,"")+e;t.length<=10&&(t.length>3&&t.length<7?S(t.replace(/(\d{3})(\d{1,3})/,"$1-$2")):S(t.replace(/(\d{3})(\d{3})(\d{1,4})/,"$1-$2-$3")))};return r.createElement("div",{className:n.keypad},r.createElement("div",{className:n.infoContainer},r.createElement("div",{className:n.inner},Boolean(P)?r.createElement("div",{className:n.callData},P.name):r.createElement("div",{className:n.callData},"Unknown Number"),r.createElement("div",{className:n.input},r.createElement(p(),{mask:"999-999-9999",value:N,onChange:O},(function(){return r.createElement(i.Z,{className:n.numInput,name:"number",type:"text",disableUnderline:!0,placeholder:"___-___-____",inputProps:{style:{fontSize:40}}})})),r.createElement(c.Z,{onClick:j,style:{padding:20}},r.createElement(m.G,{icon:["fas","delete-left"]}))))),r.createElement(l.ZP,{container:!0,spacing:1,className:n.keys},r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(1)}},"1")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(2)}},"2")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(3)}},"3")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(4)}},"4")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(5)}},"5")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(6)}},"6")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(7)}},"7")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(8)}},"8")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(9)}},"9")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,disabled:!0},"*")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:n.keypadBtn,onClick:function(){return I(0)}},"0")),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{disabled:!0,color:"primary",className:n.keypadBtn},"#")),r.createElement(l.ZP,{item:!0,xs:4},!f&&r.createElement(u.Z,{color:"primary",className:"".concat(n.keypadBtn," nav"),onClick:function(){return s("/apps/phone/recent")}},r.createElement(m.G,{icon:["far","clock-rotate-left"],style:{fontSize:18}}))),r.createElement(l.ZP,{item:!0,xs:4},r.createElement(u.Z,{color:"primary",className:"".concat(n.keypadBtn," call ").concat(N.replace(/\_/g,"").length<12||Boolean(w)?"disabled":""),disabled:N.replace(/\_/g,"").length<12||Boolean(w),onClick:B},r.createElement(m.G,{icon:["far","phone"],style:{fontSize:36}}))),r.createElement(l.ZP,{item:!0,xs:4},!f&&r.createElement(u.Z,{color:"primary",className:"".concat(n.keypadBtn," nav"),onClick:function(){return s("/apps/contacts")}},r.createElement(m.G,{icon:["far","address-book"],style:{fontSize:18}})))))}}}]);