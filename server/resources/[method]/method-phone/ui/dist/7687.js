"use strict";(self.webpackChunkmethod_phone=self.webpackChunkmethod_phone||[]).push([[7687,417],{70417:(e,t,a)=>{a.d(t,{Z:()=>I});var r=a(63366),n=a(87462),o=a(67294),l=a(86010),s=a(94780),i=a(59773),c=a(29602),m=a(16122),u=a(1588),d=a(28562);function f(e){return(0,d.Z)("MuiListItemAvatar",e)}(0,u.Z)("MuiListItemAvatar",["root","alignItemsFlexStart"]);var p=a(48521);const Z=["className"],v=(0,c.ZP)("div",{name:"MuiListItemAvatar",slot:"Root",overridesResolver:(e,t)=>{const{ownerState:a}=e;return[t.root,"flex-start"===a.alignItems&&t.alignItemsFlexStart]}})((({ownerState:e})=>(0,n.Z)({minWidth:56,flexShrink:0},"flex-start"===e.alignItems&&{marginTop:8}))),I=o.forwardRef((function(e,t){const a=(0,m.Z)({props:e,name:"MuiListItemAvatar"}),{className:c}=a,u=(0,r.Z)(a,Z),d=o.useContext(i.Z),I=(0,n.Z)({},a,{alignItems:d.alignItems}),g=(e=>{const{alignItems:t,classes:a}=e,r={root:["root","flex-start"===t&&"alignItemsFlexStart"]};return(0,s.Z)(r,f,a)})(I);return(0,p.jsx)(v,(0,n.Z)({className:(0,l.default)(g.root,c),ownerState:I,ref:t},u))}))},7687:(e,t,a)=>{a.r(t),a.d(t,{default:()=>f});var r=a(67294),n=a(86706),o=a(7952),l=a(70417),s=a(67109),i=a(59334),c=a(52141),m=a(94235),u=a(67814),d=(a(68174),(0,m.Z)((function(e){return{item:{borderBottom:"1px solid ".concat(e.palette.border.divider),"&:first-child":{borderTop:"1px solid ".concat(e.palette.border.divider)}},avatar:{backgroundColor:e.palette.primary.main},myself:{fontSize:14,color:e.palette.info.main,marginRight:5},owner:{fontSize:14,color:"gold",marginRight:5}}})));const f=function(e){var t=e.jobData,a=(e.playerJob,e.employee),m=e.onClick,f=d(),p=(0,n.v9)((function(e){return e.data.data.player}));return r.createElement(o.ZP,{className:f.item,button:!0,onClick:function(){return m(a)}},r.createElement(l.Z,null,r.createElement(s.Z,{className:f.avatar},r.createElement(u.G,{icon:["fas","user"]}))),r.createElement(i.Z,{primary:r.createElement("span",null,p.SID==a.SID?r.createElement(c.Z,{title:"You"},r.createElement("span",null,r.createElement(u.G,{className:f.myself,icon:["fas","user"]}))):(null==t?void 0:t.Owner)==a.SID?r.createElement(c.Z,{title:"Business Owner"},r.createElement("span",null,r.createElement(u.G,{className:f.owner,icon:["fas","crown"]}))):null,"".concat(a.First," ").concat(a.Last)),secondary:"State ID: ".concat(a.SID)}))}}}]);