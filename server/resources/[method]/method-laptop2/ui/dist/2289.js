"use strict";(self.webpackChunksandbox_laptop=self.webpackChunksandbox_laptop||[]).push([[2289],{42289:(e,t,r)=>{r.r(t),r.d(t,{default:()=>y});var n=r(89526),a=r(92070),i=r(74484),o=r(50871),l=r(77290),c=(r(24963),r(21447),r(18549),r(46364)),u=r(89813);r(57170),r(30909),r(36105);function s(e){return function(e){if(Array.isArray(e))return f(e)}(e)||function(e){if("undefined"!=typeof Symbol&&null!=e[Symbol.iterator]||null!=e["@@iterator"])return Array.from(e)}(e)||m(e)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function d(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){var r=null==e?null:"undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(null!=r){var n,a,i,o,l=[],c=!0,u=!1;try{if(i=(r=r.call(e)).next,0===t){if(Object(r)!==r)return;c=!1}else for(;!(c=(n=i.call(r)).done)&&(l.push(n.value),l.length!==t);c=!0);}catch(e){u=!0,a=e}finally{try{if(!c&&null!=r.return&&(o=r.return(),Object(o)!==o))return}finally{if(u)throw a}}return l}}(e,t)||m(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function m(e,t){if(e){if("string"==typeof e)return f(e,t);var r=Object.prototype.toString.call(e).slice(8,-1);return"Object"===r&&e.constructor&&(r=e.constructor.name),"Map"===r||"Set"===r?Array.from(e):"Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r)?f(e,t):void 0}}function f(e,t){(null==t||t>e.length)&&(t=e.length);for(var r=0,n=new Array(t);r<t;r++)n[r]=e[r];return n}var p=(0,i.Z)((function(e){return{wrapper:{position:"relative",height:"100%",background:e.palette.secondary.main,overflow:"auto"},body:{padding:10,height:"100%"},contractGrid:{overflow:"auto",height:"100%"},emptyMsg:{width:"100%",textAlign:"center",fontSize:20,fontWeight:"bold",marginTop:"22%"},editorField:{marginBottom:15},actionBtn:{fontSize:14},titleWrapper:{padding:10,background:e.palette.secondary.dark,"&:not(:last-of-type)":{marginBottom:10}},titleDetails:{position:"absolute",width:"100%",height:"fit-content",top:0,bottom:0,margin:"auto"},titleTitle:{fontSize:20,color:e.palette.primary.main,fontWeight:"bold",textAlign:"center"}}}));const y=function(e){var t=e.banned,r=e.reputations,i=p(),m=((0,u.TE)(),(0,a.I0)(),(0,u.VY)(),(0,a.v9)((function(e){return e.data.data.myGroup})),(0,a.v9)((function(e){return e.data.data.boostingQueue})),(0,a.v9)((function(e){var t;return null===(t=e.data.data.player.Profiles)||void 0===t?void 0:t.redline})),d((0,n.useState)(s(Array(3).keys()).map((function(e){return{id:e,owner:{SID:1,Alias:"MeFast"},vehicle:{model:"drafter",label:"Drafter",class:"A+"},prices:{standard:{price:25,coin:"VRM"},scratch:{price:50,coin:"VRM"}},expires:1659553001}}))),2)),f=m[0],y=(m[1],d((0,n.useState)(!1),2)),v=(y[0],y[1],d((0,n.useState)(!1),2)),h=(v[0],v[1],d((0,n.useState)(null),2)),g=(h[0],h[1],d((0,n.useState)(null),2)),b=(g[0],g[1],d((0,n.useState)(Array()),2)),S=(b[0],b[1],d((0,n.useState)(!1),2));S[0],S[1];if(t)return n.createElement("div",{className:i.wrapper},n.createElement("div",{className:i.emptyMsg},"Banned..."));var w=null==r?void 0:r.find((function(e){return"Boosting"==e.id}));return n.createElement("div",{className:i.wrapper},n.createElement(o.ZP,{container:!0,style:{height:"100%",overflow:"hidden"}},n.createElement(o.ZP,{item:!0,xs:12},n.createElement(l.Z,{className:i.titleWrapper},n.createElement(o.ZP,{container:!0},n.createElement(o.ZP,{item:!0,xs:12,style:{position:"relative",height:38}},n.createElement("div",{className:i.titleDetails},n.createElement("div",{className:i.titleTitle},"Boosting Market")))))),n.createElement(o.ZP,{item:!0,xs:12,style:{padding:10,height:"calc(100% - 82px)"}},n.createElement(o.ZP,{container:!0,spacing:2,className:i.contractGrid},f&&f.length>0?f.map((function(e){var t;return n.createElement(c.default,{key:"contract-".concat(e.id),contract:e,repLevel:null!==(t=null==w?void 0:w.value)&&void 0!==t?t:1})})):n.createElement("div",{className:i.emptyMsg},"You Have No Available Contracts")))))}}}]);