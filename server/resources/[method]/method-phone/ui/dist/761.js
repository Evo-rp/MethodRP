"use strict";(self.webpackChunkmethod_phone=self.webpackChunkmethod_phone||[]).push([[761],{34119:(e,t,n)=>{n.d(t,{A3:()=>c,No:()=>l,ok:()=>o});n(97762);var r=n(27856),a=n.n(r),i=n(25935),o=function(e){return(0,i.ZP)(a().sanitize(e))},c=new Intl.NumberFormat("en-US",{style:"currency",currency:"USD"}),l=function(e){var t=(""+e).replace(/\D/g,"").match(/^(\d{3})(\d{3})(\d{4})$/);return t?"".concat(t[1],"-").concat(t[2],"-").concat(t[3]):null}},10761:(e,t,n)=>{n.r(t),n.d(t,{default:()=>E});var r=n(67294),a=n(86706),i=n(67109),o=n(52141),c=n(15725),l=n(6867),s=n(94235),m=n(67814),u=n(75934),d=n.n(u),p=n(74855),g=n(22004),f=n(94803),h=n.n(f),x=(n(69042),n(34119),n(45525)),v=n(68174),b=(0,s.Z)((function(e){return{tweet:{borderRadius:8,background:"".concat(e.palette.secondary.dark,"d1"),backdropFilter:"blur(10px)",marginBottom:8,border:"1px solid ".concat(e.palette.border.divider)},header:{display:"flex",padding:10,borderBottom:"1px solid ".concat(e.palette.border.divider)},username:{flexGrow:1,lineHeight:"35px"},verification:{marginLeft:5,color:"#00aced","&.business":{color:"#eac93e"},"&.government":{color:"#829aab"}},avatar:{width:35,height:35,margin:"auto",marginRight:8},timestamp:{fontSize:10,lineHeight:"35px"},content:{marginTop:10,fontSize:14,color:e.palette.text.alt,padding:10},messageImg:{display:"block",maxWidth:200},copyableText:{color:"#1de9b6",textDecoration:"underline",transition:"filter ease-in 0.15s","&:hover":{filter:"brightness(0.7)",cursor:"pointer"}},hashtag:{color:e.palette.primary.light},image:{maxWidth:400,maxHeight:400,height:"100%",width:"100%",border:"1px solid ".concat(e.palette.border.divider),borderRadius:4},rtLink:{color:e.palette.primary.light},btnCount:{marginRight:5,color:e.palette.text.alt},actionBtn:{fontSize:13},actions:{marginTop:10,padding:"3px 0",borderTop:"1px solid ".concat(e.palette.border.divider)}}}));const E=function(e){var t,n,s,u=e.tweet,f=e.rtcount,E=e.onReply,y=e.onRetweet,w=(0,v.Ov)("twitter"),N=b(w),k=((0,a.I0)(),(0,a.v9)((function(e){return e.data.data.player}))),C=[{regex:/((https?:\/\/(www\.)?(i\.)?imgur\.com\/[a-zA-Z\d]+)(\.png|\.jpg|\.jpeg|\.gif)?)/gim,fn:function(e,t){return r.createElement(x.NX,{key:e,className:N.messageImg,src:t[0]})}},{regex:/(http|https):\/\/(\S+)\.([a-z]{2,}?)(.*?)( |\,|$|\.)(mp4)/gim,fn:function(e,t){return r.createElement("div",null,r.createElement(g.Z,{key:e,volume:.25,width:"100%",controls:!0,url:"".concat(t[0])}))}},{regex:/(http|https):\/\/(\S+)\.([a-z]{2,}?)(.*?)( |\,|$|\.)/gim,fn:function(e,t){return r.createElement(p.CopyToClipboard,{text:t[0],key:e,onCopy:function(){return showAlert("Link Copied To Clipboard")}},r.createElement("a",{className:N.copyableText},t.input))}},{regex:/(\S+)\.([a-z]{2,}?)(.*?)( |\,|$|\.)/gim,fn:function(e,t){return r.createElement(p.CopyToClipboard,{text:t[0],key:e,onCopy:function(){return showAlert("Link Copied To Clipboard")}},r.createElement("a",{className:N.copyableText},t.input))}},{regex:/#(\w)+/g,fn:function(e,t){return r.createElement("span",{key:e,className:N.hashtag},t[0])}},{regex:/@(\w)+/g,fn:function(e,t){return r.createElement("span",{key:e,className:N.hashtag},t[0])}}];return r.createElement("div",{className:N.tweet},r.createElement("div",{className:N.header},r.createElement(i.Z,{className:N.avatar,src:u.author.picture}),r.createElement("div",{className:N.username},r.createElement("span",{className:N.author},u.author.name),u.verified&&r.createElement(o.Z,{title:"business"==u.verified?"Verified Business Account":"Verified Government Account"},r.createElement("span",{className:"".concat(N.verification," ").concat(u.verified)},r.createElement(m.G,{icon:["fas","badge-check"]})))),r.createElement("div",{className:N.timestamp},r.createElement(h(),{unix:!0,date:u.time,interval:6e4,fromNow:!0}))),r.createElement("div",{className:N.content},d()(C)(u.content)),Boolean(u.image.using)&&r.createElement(x.NX,{src:u.image.link,className:N.image}),r.createElement("div",{className:N.actions},r.createElement(c.ZP,{container:!0,style:{textAlign:"center"}},r.createElement(c.ZP,{item:!0,xs:6},r.createElement(l.Z,{className:N.actionBtn,onClick:function(){return E(u.author.name)},disabled:!Boolean(null===(t=k.Profiles)||void 0===t||null===(n=t.twitter)||void 0===n?void 0:n.name)},r.createElement(m.G,{icon:["fas","reply"]}))),r.createElement(c.ZP,{item:!0,xs:6},r.createElement(l.Z,{className:N.actionBtn,onClick:function(){return y(u)},disabled:!Boolean(null==k||null===(s=k.Profiles)||void 0===s?void 0:s.twitter)||u.retweet||u.cid==k.ID},r.createElement("span",{className:N.btnCount},f),r.createElement(m.G,{icon:"arrows-rotate"}))))))}},75934:e=>{e.exports=function(e){var t=0;function n(e,r){if(!e.fn||"function"!=typeof e.fn)return r;if(!(e.regex&&e.regex instanceof RegExp))return r;if("string"==typeof r){for(var a=e.regex,i=null,o=[];null!==(i=a.exec(r));){var c=i.index,l=i[0];o.push(r.substring(0,c)),o.push(e.fn(++t,i)),r=r.substring(c+l.length,r.length+1),a.lastIndex=0}return o.push(r),o}return Array.isArray(r)?r.map((function(t){return n(e,t)})):r}return function(t){return e&&Array.isArray(e)&&e.length?(e.forEach((function(e){return t=n(e,t)})),t):t}}}}]);