"use strict";(self.webpackChunkmethod_phone=self.webpackChunkmethod_phone||[]).push([[7130,1781],{11781:(e,a,t)=>{t.d(a,{Z:()=>x});var n=t(63366),o=t(87462),r=t(67294),i=t(86010),l=t(94780),s=t(76637),c=t(98216),d=t(16122),p=t(1588),u=t(28562);function h(e){return(0,u.Z)("MuiFab",e)}const m=(0,p.Z)("MuiFab",["root","primary","secondary","extended","circular","focusVisible","disabled","colorInherit","sizeSmall","sizeMedium","sizeLarge","info","error","warning","success"]);var b=t(29602),v=t(48521);const g=["children","className","color","component","disabled","disableFocusRipple","focusVisibleClassName","size","variant"],f=(0,b.ZP)(s.Z,{name:"MuiFab",slot:"Root",shouldForwardProp:e=>(0,b.FO)(e)||"classes"===e,overridesResolver:(e,a)=>{const{ownerState:t}=e;return[a.root,a[t.variant],a[`size${(0,c.Z)(t.size)}`],"inherit"===t.color&&a.colorInherit,a[(0,c.Z)(t.size)],a[t.color]]}})((({theme:e,ownerState:a})=>{var t,n;return(0,o.Z)({},e.typography.button,{minHeight:36,transition:e.transitions.create(["background-color","box-shadow","border-color"],{duration:e.transitions.duration.short}),borderRadius:"50%",padding:0,minWidth:0,width:56,height:56,zIndex:(e.vars||e).zIndex.fab,boxShadow:(e.vars||e).shadows[6],"&:active":{boxShadow:(e.vars||e).shadows[12]},color:e.vars?e.vars.palette.text.primary:null==(t=(n=e.palette).getContrastText)?void 0:t.call(n,e.palette.grey[300]),backgroundColor:(e.vars||e).palette.grey[300],"&:hover":{backgroundColor:(e.vars||e).palette.grey.A100,"@media (hover: none)":{backgroundColor:(e.vars||e).palette.grey[300]},textDecoration:"none"},[`&.${m.focusVisible}`]:{boxShadow:(e.vars||e).shadows[6]}},"small"===a.size&&{width:40,height:40},"medium"===a.size&&{width:48,height:48},"extended"===a.variant&&{borderRadius:24,padding:"0 16px",width:"auto",minHeight:"auto",minWidth:48,height:48},"extended"===a.variant&&"small"===a.size&&{width:"auto",padding:"0 8px",borderRadius:17,minWidth:34,height:34},"extended"===a.variant&&"medium"===a.size&&{width:"auto",padding:"0 16px",borderRadius:20,minWidth:40,height:40},"inherit"===a.color&&{color:"inherit"})}),(({theme:e,ownerState:a})=>(0,o.Z)({},"inherit"!==a.color&&"default"!==a.color&&null!=(e.vars||e).palette[a.color]&&{color:(e.vars||e).palette[a.color].contrastText,backgroundColor:(e.vars||e).palette[a.color].main,"&:hover":{backgroundColor:(e.vars||e).palette[a.color].dark,"@media (hover: none)":{backgroundColor:(e.vars||e).palette[a.color].main}}})),(({theme:e})=>({[`&.${m.disabled}`]:{color:(e.vars||e).palette.action.disabled,boxShadow:(e.vars||e).shadows[0],backgroundColor:(e.vars||e).palette.action.disabledBackground}}))),x=r.forwardRef((function(e,a){const t=(0,d.Z)({props:e,name:"MuiFab"}),{children:r,className:s,color:p="default",component:u="button",disabled:m=!1,disableFocusRipple:b=!1,focusVisibleClassName:x,size:w="large",variant:Z="circular"}=t,k=(0,n.Z)(t,g),z=(0,o.Z)({},t,{color:p,component:u,disabled:m,disableFocusRipple:b,size:w,variant:Z}),C=(e=>{const{color:a,variant:t,classes:n,size:r}=e,i={root:["root",t,`size${(0,c.Z)(r)}`,"inherit"===a?"colorInherit":a]},s=(0,l.Z)(i,h,n);return(0,o.Z)({},n,s)})(z);return(0,v.jsx)(f,(0,o.Z)({className:(0,i.default)(C.root,s),component:u,disabled:m,focusRipple:!b,focusVisibleClassName:(0,i.default)(C.focusVisible,x),ownerState:z,ref:a},k,{classes:C,children:r}))}))},17130:(e,a,t)=>{t.r(a),t.d(a,{default:()=>u});var n=t(67294),o=t(86706),r=t(15725),i=t(6867),l=t(69041),s=(t(64680),t(67109),t(11781),t(59062),t(94235)),c=t(67814),d=t(64118),p=(0,s.Z)((function(e){return{appContainer:{marginBottom:4,background:e.palette.secondary.dark,border:"1px solid ".concat(e.palette.border.divider)},appInfo:{display:"flex"},appIcon:{fontSize:18,width:50,lineHeight:"50px",textAlign:"center",borderRight:"1px solid ".concat(e.palette.border.divider)},appLabel:{lineHeight:"50px",paddingLeft:10,fontWeight:800,flexGrow:1},installIcon:{width:50,lineHeight:"50px",textAlign:"center","& svg":{fontSize:14}}}}));const u=(0,o.$j)(null,{install:d.install,uninstall:d.uninstall})((function(e){var a=p(),t=(0,o.v9)((function(e){return e.store.installing})).includes(e.app.name),s=(0,o.v9)((function(e){return e.store.installPending})).includes(e.app.name),d=(0,o.v9)((function(e){return e.store.installFailed})).includes(e.app.name),u=(0,o.v9)((function(e){return e.store.uninstalling})).includes(e.app.name),h=(0,o.v9)((function(e){return e.store.uninstallPending})).includes(e.app.name),m=(0,o.v9)((function(e){return e.store.uninstallFailed})).includes(e.app.name),b=function(a){a.preventDefault(),t||e.install(e.app.name)},v=function(a){a.preventDefault(),e.uninstall(e.app.name)};return n.createElement(r.ZP,{item:!0,xs:12},n.createElement("div",{className:a.appContainer},n.createElement("div",{className:a.appInfo},n.createElement("div",{className:a.appIcon,style:{background:e.app.color}},n.createElement(c.G,{icon:e.app.icon})),n.createElement("div",{className:a.appLabel},e.app.storeLabel),n.createElement("div",{className:a.installIcon},Boolean(e.installed)?n.createElement(i.Z,{onClick:v,disabled:u||h||m||!e.app.canUninstall},n.createElement(c.G,{icon:["far","x"]})):n.createElement(i.Z,{onClick:b,disabled:t||s||d},n.createElement(c.G,{icon:["far","check"]})))),(t||s||u||h)&&n.createElement(l.Z,{color:t?"success":u?"error":"warning"})))}))}}]);