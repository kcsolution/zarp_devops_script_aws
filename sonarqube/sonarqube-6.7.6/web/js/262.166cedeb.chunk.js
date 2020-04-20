webpackJsonp([262],{2120:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r=n(0),o=(n.n(r),n(30)),a=n.n(o),i=n(2344),l=n(2346),s=n(699),u=n(2207),c=n(259),p=n(2),f=this&&this.__extends||function(){var e=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var n in t)t.hasOwnProperty(n)&&(e[n]=t[n])};return function(t,n){function r(){this.constructor=t}e(t,n),t.prototype=null===n?Object.create(n):(r.prototype=n.prototype,new r)}}(),h=function(e){function t(){var t=null!==e&&e.apply(this,arguments)||this;return t.state={loading:!0},t.handleChangeProfile=function(e,r){var o=t.props.component,a=t.state,i=a.allProfiles,l=a.profiles,c=i&&i.find(function(e){return e.key===r});return(c&&c.isDefault?n.i(s.a)(e,o.key):n.i(s.b)(r,o.key)).then(function(){if(t.mounted&&l&&c){var r=l.filter(function(t){return t.key!==e}).concat([c]);t.setState({profiles:r}),n.i(u.a)(n.i(p.translateWithParameters)("project_quality_profile.successfully_updated",c.languageName))}})},t}return f(t,e),t.prototype.componentDidMount=function(){this.mounted=!0,this.checkPermissions()?this.fetchProfiles():n.i(c.default)()},t.prototype.componentWillUnmount=function(){this.mounted=!1},t.prototype.checkPermissions=function(){var e=this.props.component.configuration;return!(!e||!e.showQualityProfiles)},t.prototype.fetchProfiles=function(){var e=this,t=this.props.component,r=this.props.customOrganizations?t.organization:void 0;Promise.all([n.i(s.c)({organization:r}).then(function(e){return e.profiles}),n.i(s.c)({organization:r,project:t.key}).then(function(e){return e.profiles})]).then(function(t){var n=t[0],r=t[1];e.mounted&&e.setState({loading:!1,allProfiles:n,profiles:r})},function(){e.mounted&&e.setState({loading:!1})})},t.prototype.render=function(){if(!this.checkPermissions())return null;var e=this.state,t=e.allProfiles,o=e.loading,s=e.profiles;return r.createElement("div",{className:"page page-limited"},r.createElement(a.a,{title:n.i(p.translate)("project_quality_profiles.page")}),r.createElement(i.a,null),o?r.createElement("i",{className:"spinner"}):t&&s&&r.createElement(l.a,{allProfiles:t,profiles:s,onChangeProfile:this.handleChangeProfile}))},t}(r.PureComponent);t.default=h},2207:function(e,t,n){"use strict";function r(e){n.i(o.default)().dispatch(a.e(e))}t.a=r;var o=n(80),a=n(45)},2344:function(e,t,n){"use strict";function r(){return o.createElement("header",{className:"page-header"},o.createElement("h1",{className:"page-title"},n.i(a.translate)("project_quality_profiles.page")),o.createElement("div",{className:"page-description"},n.i(a.translate)("project_quality_profiles.page.description")))}t.a=r;var o=n(0),a=(n.n(o),n(2))},2345:function(e,t,n){"use strict";var r=n(0),o=(n.n(r),n(61)),a=(n.n(o),n(2)),i=this&&this.__extends||function(){var e=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var n in t)t.hasOwnProperty(n)&&(e[n]=t[n])};return function(t,n){function r(){this.constructor=t}e(t,n),t.prototype=null===n?Object.create(n):(r.prototype=n.prototype,new r)}}(),l=function(e){function t(){var t=null!==e&&e.apply(this,arguments)||this;return t.state={loading:!1},t.stopLoading=function(){t.mounted&&t.setState({loading:!1})},t.handleChange=function(e){t.props.profile.key!==e.value&&(t.setState({loading:!0}),t.props.onChangeProfile(t.props.profile.key,e.value).then(t.stopLoading,t.stopLoading))},t.renderProfileName=function(e){return e.isDefault?r.createElement("span",null,r.createElement("strong",null,n.i(a.translate)("default")),": ",e.label):r.createElement("span",null,e.label)},t}return i(t,e),t.prototype.componentDidMount=function(){this.mounted=!0},t.prototype.componentWillUnmount=function(){this.mounted=!1},t.prototype.renderProfileSelect=function(){var e=this.props,t=e.profile,n=e.possibleProfiles,a=n.map(function(e){return{value:e.key,label:e.name,isDefault:e.isDefault}});return r.createElement(o,{clearable:!1,disabled:this.state.loading,onChange:this.handleChange,optionRenderer:this.renderProfileName,options:a,style:{width:300},valueRenderer:this.renderProfileName,value:t.key})},t.prototype.render=function(){var e=this.props.profile;return r.createElement("tr",{"data-key":e.language},r.createElement("td",{className:"thin nowrap"},e.languageName),r.createElement("td",{className:"thin nowrap"},this.renderProfileSelect()),r.createElement("td",null,this.state.loading&&r.createElement("i",{className:"spinner"})))},t}(r.PureComponent);t.a=l},2346:function(e,t,n){"use strict";function r(e){var t=n.i(a.groupBy)(e.allProfiles,"language"),r=n.i(a.orderBy)(e.profiles,"languageName"),s=r.map(function(n){return o.createElement(i.a,{key:n.language,profile:n,possibleProfiles:t[n.language],onChangeProfile:e.onChangeProfile})});return o.createElement("table",{className:"data zebra"},o.createElement("thead",null,o.createElement("tr",null,o.createElement("th",{className:"thin nowrap"},n.i(l.translate)("language")),o.createElement("th",{className:"thin nowrap"},n.i(l.translate)("quality_profile")),o.createElement("th",null," "))),o.createElement("tbody",null,s))}t.a=r;var o=n(0),a=(n.n(o),n(4)),i=(n.n(a),n(2345)),l=n(2)}});
//# sourceMappingURL=262.166cedeb.chunk.js.map