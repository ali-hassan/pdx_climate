!function(t){"object"==typeof exports&&"object"==typeof module?t(require("../../lib/codemirror")):"function"==typeof define&&define.amd?define(["../../lib/codemirror"],t):t(CodeMirror)}(function(t){function i(t,i){this.cm=t,this.options=this.buildOptions(i),this.widget=null,this.tick=this.debounce=0,this.startPos=this.cm.getCursor(),this.startLen=this.cm.getLine(this.startPos.line).length;var e=this;t.on("cursorActivity",this.activityFunc=function(){e.cursorActivity()})}function e(t,i){function e(t,e){var o;o="string"!=typeof e?function(t){return e(t,i)}:n.hasOwnProperty(e)?n[e]:e,s[t]=o}var n={Up:function(){i.moveFocus(-1)},Down:function(){i.moveFocus(1)},PageUp:function(){i.moveFocus(1-i.menuSize(),!0)},PageDown:function(){i.moveFocus(i.menuSize()-1,!0)},Home:function(){i.setFocus(0)},End:function(){i.setFocus(i.length-1)},Enter:i.pick,Tab:i.pick,Esc:i.close},o=t.options.customKeys,s=o?{}:n;if(o)for(var c in o)o.hasOwnProperty(c)&&e(c,o[c]);if(o=t.options.extraKeys)for(c in o)o.hasOwnProperty(c)&&e(c,o[c]);return s}function n(t,i){for(;i&&i!=t;){if("LI"===i.nodeName.toUpperCase()&&i.parentNode==t)return i;i=i.parentNode}}function o(i,o){this.completion=i,this.data=o,this.picked=!1;var s=this,c=i.cm,h=this.hints=document.createElement("ul");h.className="CodeMirror-hints",this.selectedHint=o.selectedHint||0;for(var l=o.list,r=0;r<l.length;++r){var a=h.appendChild(document.createElement("li")),u=l[r],f="CodeMirror-hint"+(r!=this.selectedHint?"":" CodeMirror-hint-active");null!=u.className&&(f=u.className+" "+f),a.className=f,u.render?u.render(a,o,u):a.appendChild(document.createTextNode(u.displayText||("string"==typeof u?u:u.text))),a.hintId=r}var r=c.cursorCoords(i.options.alignWithWord?o.from:null),d=r.left,p=r.bottom,m=!0;if(h.style.left=d+"px",h.style.top=p+"px",a=window.innerWidth||Math.max(document.body.offsetWidth,document.documentElement.offsetWidth),f=window.innerHeight||Math.max(document.body.offsetHeight,document.documentElement.offsetHeight),(i.options.container||document.body).appendChild(h),u=h.getBoundingClientRect(),0<u.bottom-f){var g=u.bottom-u.top;0<r.top-(r.bottom-u.top)-g?(h.style.top=(p=r.top-g)+"px",m=!1):g>f&&(h.style.height=f-5+"px",h.style.top=(p=r.bottom-u.top)+"px",f=c.getCursor(),o.from.ch!=f.ch&&(r=c.cursorCoords(f),h.style.left=(d=r.left)+"px",u=h.getBoundingClientRect()))}if(f=u.right-a,0<f&&(u.right-u.left>a&&(h.style.width=a-5+"px",f-=u.right-u.left-a),h.style.left=(d=r.left-f)+"px"),c.addKeyMap(this.keyMap=e(i,{moveFocus:function(t,i){s.changeActive(s.selectedHint+t,i)},setFocus:function(t){s.changeActive(t)},menuSize:function(){return s.screenAmount()},length:l.length,close:function(){i.close()},pick:function(){s.pick()},data:o})),i.options.closeOnUnfocus){var v;c.on("blur",this.onBlur=function(){v=setTimeout(function(){i.close()},100)}),c.on("focus",this.onFocus=function(){clearTimeout(v)})}var y=c.getScrollInfo();return c.on("scroll",this.onScroll=function(){var t=c.getScrollInfo(),e=c.getWrapperElement().getBoundingClientRect(),n=p+y.top-t.top,o=n-(window.pageYOffset||(document.documentElement||document.body).scrollTop);if(m||(o+=h.offsetHeight),o<=e.top||o>=e.bottom)return i.close();h.style.top=n+"px",h.style.left=d+y.left-t.left+"px"}),t.on(h,"dblclick",function(t){(t=n(h,t.target||t.srcElement))&&null!=t.hintId&&(s.changeActive(t.hintId),s.pick())}),t.on(h,"click",function(t){(t=n(h,t.target||t.srcElement))&&null!=t.hintId&&(s.changeActive(t.hintId),i.options.completeOnSingleClick&&s.pick())}),t.on(h,"mousedown",function(){setTimeout(function(){c.focus()},20)}),t.signal(o,"select",l[0],h.firstChild),!0}t.showHint=function(t,i,e){if(!i)return t.showHint(e);if(e&&e.async&&(i.async=!0),i={hint:i},e)for(var n in e)i[n]=e[n];return t.showHint(i)},t.defineExtension("showHint",function(e){1<this.listSelections().length||this.somethingSelected()||(this.state.completionActive&&this.state.completionActive.close(),e=this.state.completionActive=new i(this,e),e.options.hint&&(t.signal(this,"startCompletion",this),e.update()))});var s=window.requestAnimationFrame||function(t){return setTimeout(t,1e3/60)},c=window.cancelAnimationFrame||clearTimeout;i.prototype={close:function(){this.active()&&(this.tick=this.cm.state.completionActive=null,this.cm.off("cursorActivity",this.activityFunc),this.widget&&this.widget.close(),t.signal(this.cm,"endCompletion",this.cm))},active:function(){return this.cm.state.completionActive==this},pick:function(i,e){var n=i.list[e];n.hint?n.hint(this.cm,i,n):this.cm.replaceRange("string"==typeof n?n:n.text,n.from||i.from,n.to||i.to,"complete"),t.signal(i,"pick",n),this.close()},showHints:function(t){if(!t||!t.list.length||!this.active())return this.close();this.options.completeSingle&&1==t.list.length?this.pick(t,0):this.showWidget(t)},cursorActivity:function(){this.debounce&&(c(this.debounce),this.debounce=0);var t=this.cm.getCursor(),i=this.cm.getLine(t.line);if(t.line!=this.startPos.line||i.length-t.ch!=this.startLen-this.startPos.ch||t.ch<this.startPos.ch||this.cm.somethingSelected()||t.ch&&this.options.closeCharacters.test(i.charAt(t.ch-1)))this.close();else{var e=this;this.debounce=s(function(){e.update()}),this.widget&&this.widget.disable()}},update:function(){if(null!=this.tick)if(this.data&&t.signal(this.data,"update"),this.options.hint.async){var i=++this.tick,e=this;this.options.hint(this.cm,function(t){e.tick==i&&e.finishUpdate(t)},this.options)}else this.finishUpdate(this.options.hint(this.cm,this.options),i)},finishUpdate:function(t){this.data=t;var i=this.widget&&this.widget.picked;this.widget&&this.widget.close(),t&&t.list.length&&(i&&1==t.list.length?this.pick(t,0):this.widget=new o(this,t))},showWidget:function(i){this.data=i,this.widget=new o(this,i),t.signal(i,"shown")},buildOptions:function(t){var i,e=this.cm.options.hintOptions,n={};for(i in h)n[i]=h[i];if(e)for(i in e)void 0!==e[i]&&(n[i]=e[i]);if(t)for(i in t)void 0!==t[i]&&(n[i]=t[i]);return n}},o.prototype={close:function(){if(this.completion.widget==this){this.completion.widget=null,this.hints.parentNode.removeChild(this.hints),this.completion.cm.removeKeyMap(this.keyMap);var t=this.completion.cm;this.completion.options.closeOnUnfocus&&(t.off("blur",this.onBlur),t.off("focus",this.onFocus)),t.off("scroll",this.onScroll)}},disable:function(){this.completion.cm.removeKeyMap(this.keyMap);var t=this;this.keyMap={Enter:function(){t.picked=!0}},this.completion.cm.addKeyMap(this.keyMap)},pick:function(){this.completion.pick(this.data,this.selectedHint)},changeActive:function(i,e){if(i>=this.data.list.length?i=e?this.data.list.length-1:0:0>i&&(i=e?0:this.data.list.length-1),this.selectedHint!=i){var n=this.hints.childNodes[this.selectedHint];n.className=n.className.replace(" CodeMirror-hint-active",""),n=this.hints.childNodes[this.selectedHint=i],n.className+=" CodeMirror-hint-active",n.offsetTop<this.hints.scrollTop?this.hints.scrollTop=n.offsetTop-3:n.offsetTop+n.offsetHeight>this.hints.scrollTop+this.hints.clientHeight&&(this.hints.scrollTop=n.offsetTop+n.offsetHeight-this.hints.clientHeight+3),t.signal(this.data,"select",this.data.list[this.selectedHint],n)}},screenAmount:function(){return Math.floor(this.hints.clientHeight/this.hints.firstChild.offsetHeight)||1}},t.registerHelper("hint","auto",function(i,e){var n=i.getHelpers(i.getCursor(),"hint");if(n.length)for(var o=0;o<n.length;o++){var s=n[o](i,e);if(s&&s.list.length)return s}else if(n=i.getHelper(i.getCursor(),"hintWords")){if(n)return t.hint.fromList(i,{words:n})}else if(t.hint.anyword)return t.hint.anyword(i,e)}),t.registerHelper("hint","fromList",function(i,e){for(var n=i.getCursor(),o=i.getTokenAt(n),s=[],c=0;c<e.words.length;c++){var h=e.words[c];h.slice(0,o.string.length)==o.string&&s.push(h)}if(s.length)return{list:s,from:t.Pos(n.line,o.start),to:t.Pos(n.line,o.end)}}),t.commands.autocomplete=t.showHint;var h={hint:t.hint.auto,completeSingle:!0,alignWithWord:!0,closeCharacters:/[\s()\[\]{};:>,]/,closeOnUnfocus:!0,completeOnSingleClick:!1,container:null,customKeys:null,extraKeys:null};t.defineOption("hintOptions",null)});