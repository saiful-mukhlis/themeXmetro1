{literal}
<style>
<!--
label,
input,
button,
select,
textarea {
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
}

input,
button,
select,
textarea {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

label {
  display: block;
  margin-bottom: 5px;
}

select,
textarea,
input[type="text"],
input[type="password"],
input[type="datetime"],
input[type="datetime-local"],
input[type="date"],
input[type="month"],
input[type="time"],
input[type="week"],
input[type="number"],
input[type="email"],
input[type="url"],
input[type="search"],
input[type="tel"],
input[type="color"],
.uneditable-input {
  display: inline-block;
  height: 20px;
  padding: 4px 6px;
  margin-bottom: 10px;
  font-size: 14px;
  line-height: 20px;
  color: #555555;
  vertical-align: middle;
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}

input,
textarea,
.uneditable-input {
  width: 206px;
}

textarea {
  height: auto;
}

textarea,
input[type="text"],
input[type="password"],
input[type="datetime"],
input[type="datetime-local"],
input[type="date"],
input[type="month"],
input[type="time"],
input[type="week"],
input[type="number"],
input[type="email"],
input[type="url"],
input[type="search"],
input[type="tel"],
input[type="color"],
.uneditable-input {
  background-color: #ffffff;
  border: 1px solid #cccccc;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border linear 0.2s, box-shadow linear 0.2s;
     -moz-transition: border linear 0.2s, box-shadow linear 0.2s;
       -o-transition: border linear 0.2s, box-shadow linear 0.2s;
          transition: border linear 0.2s, box-shadow linear 0.2s;
}



input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  *margin-top: 0;
  line-height: normal;
}

input[type="file"],
input[type="image"],
input[type="submit"],
input[type="reset"],
input[type="button"],
input[type="radio"],
input[type="checkbox"] {
  width: auto;
}

select,
input[type="file"] {
  height: 30px;
  /* In IE7, the height of the select element cannot be changed by height, only font-size */

  *margin-top: 4px;
  /* For IE7, add top margin to align select with labels */

  line-height: 30px;
}

select {
  width: 220px;
  background-color: #ffffff;
  border: 1px solid #cccccc;
}

select[multiple],
select[size] {
  height: auto;
}

select:focus,
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}

.uneditable-input,
.uneditable-textarea {
  color: #999999;
  cursor: not-allowed;
  background-color: #fcfcfc;
  border-color: #cccccc;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
     -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
          box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
}

.uneditable-input {
  overflow: hidden;
  white-space: nowrap;
}

.uneditable-textarea {
  width: auto;
  height: auto;
}

input:-moz-placeholder,
textarea:-moz-placeholder {
  color: #999999;
}

input:-ms-input-placeholder,
textarea:-ms-input-placeholder {
  color: #999999;
}

input::-webkit-input-placeholder,
textarea::-webkit-input-placeholder {
  color: #999999;
}

.radio,
.checkbox {
  min-height: 20px;
  padding-left: 20px;
}

.radio input[type="radio"],
.checkbox input[type="checkbox"] {
  float: left;
  margin-left: -20px;
}

.controls > .radio:first-child,
.controls > .checkbox:first-child {
  padding-top: 5px;
}

.radio.inline,
.checkbox.inline {
  display: inline-block;
  padding-top: 5px;
  margin-bottom: 0;
  vertical-align: middle;
}

.radio.inline + .radio.inline,
.checkbox.inline + .checkbox.inline {
  margin-left: 10px;
}

.input-mini {
  width: 60px;
}

.input-small {
  width: 90px;
}

.input-medium {
  width: 150px;
}

.input-large {
  width: 210px;
}

.input-xlarge {
  width: 270px;
}

.input-xxlarge {
  width: 530px;
}

input[class*="span"],
select[class*="span"],
textarea[class*="span"],
.uneditable-input[class*="span"],
.row-fluid input[class*="span"],
.row-fluid select[class*="span"],
.row-fluid textarea[class*="span"],
.row-fluid .uneditable-input[class*="span"] {
  float: none;
  margin-left: 0;
}

.input-append input[class*="span"],
.input-append .uneditable-input[class*="span"],
.input-prepend input[class*="span"],
.input-prepend .uneditable-input[class*="span"],
.row-fluid input[class*="span"],
.row-fluid select[class*="span"],
.row-fluid textarea[class*="span"],
.row-fluid .uneditable-input[class*="span"],
.row-fluid .input-prepend [class*="span"],
.row-fluid .input-append [class*="span"] {
  display: inline-block;
}

input,
textarea,
.uneditable-input {
  margin-left: 0;
}

.controls-row [class*="span"] + [class*="span"] {
  margin-left: 20px;
}

input.span12,
textarea.span12,
.uneditable-input.span12 {
  width: 926px;
}

input.span11,
textarea.span11,
.uneditable-input.span11 {
  width: 846px;
}

input.span10,
textarea.span10,
.uneditable-input.span10 {
  width: 766px;
}

input.span9,
textarea.span9,
.uneditable-input.span9 {
  width: 686px;
}

input.span8,
textarea.span8,
.uneditable-input.span8 {
  width: 606px;
}

input.span7,
textarea.span7,
.uneditable-input.span7 {
  width: 526px;
}

input.span6,
textarea.span6,
.uneditable-input.span6 {
  width: 446px;
}

input.span5,
textarea.span5,
.uneditable-input.span5 {
  width: 366px;
}

input.span4,
textarea.span4,
.uneditable-input.span4 {
  width: 286px;
}

input.span3,
textarea.span3,
.uneditable-input.span3 {
  width: 206px;
}

input.span2,
textarea.span2,
.uneditable-input.span2 {
  width: 126px;
}

input.span1,
textarea.span1,
.uneditable-input.span1 {
  width: 46px;
}

.controls-row {
  *zoom: 1;
}

.controls-row:before,
.controls-row:after {
  display: table;
  line-height: 0;
  content: "";
}

.controls-row:after {
  clear: both;
}

.controls-row [class*="span"],
.row-fluid .controls-row [class*="span"] {
  float: left;
}

.controls-row .checkbox[class*="span"],
.controls-row .radio[class*="span"] {
  padding-top: 5px;
}

input[disabled],
select[disabled],
textarea[disabled],
input[readonly],
select[readonly],
textarea[readonly] {
  cursor: not-allowed;
  background-color: #eeeeee;
}

input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"][readonly],
input[type="checkbox"][readonly] {
  background-color: transparent;
}

.control-group.warning .control-label,
.control-group.warning .help-block,
.control-group.warning .help-inline {
  color: #c09853;
}

.control-group.warning .checkbox,
.control-group.warning .radio,
.control-group.warning input,
.control-group.warning select,
.control-group.warning textarea {
  color: #c09853;
}

.control-group.warning input,
.control-group.warning select,
.control-group.warning textarea {
  border-color: #c09853;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

.control-group.warning input:focus,
.control-group.warning select:focus,
.control-group.warning textarea:focus {
  border-color: #a47e3c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
}

.control-group.warning .input-prepend .add-on,
.control-group.warning .input-append .add-on {
  color: #c09853;
  background-color: #fcf8e3;
  border-color: #c09853;
}

.control-group.error .control-label,
.control-group.error .help-block,
.control-group.error .help-inline {
  color: #b94a48;
}

.control-group.error .checkbox,
.control-group.error .radio,
.control-group.error input,
.control-group.error select,
.control-group.error textarea {
  color: #b94a48;
}

.control-group.error input,
.control-group.error select,
.control-group.error textarea {
  border-color: #b94a48;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

.control-group.error input:focus,
.control-group.error select:focus,
.control-group.error textarea:focus {
  border-color: #953b39;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
}

.control-group.error .input-prepend .add-on,
.control-group.error .input-append .add-on {
  color: #b94a48;
  background-color: #f2dede;
  border-color: #b94a48;
}

.control-group.success .control-label,
.control-group.success .help-block,
.control-group.success .help-inline {
  color: #468847;
}

.control-group.success .checkbox,
.control-group.success .radio,
.control-group.success input,
.control-group.success select,
.control-group.success textarea {
  color: #468847;
}

.control-group.success input,
.control-group.success select,
.control-group.success textarea {
  border-color: #468847;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

.control-group.success input:focus,
.control-group.success select:focus,
.control-group.success textarea:focus {
  border-color: #356635;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
}

.control-group.success .input-prepend .add-on,
.control-group.success .input-append .add-on {
  color: #468847;
  background-color: #dff0d8;
  border-color: #468847;
}

.control-group.info .control-label,
.control-group.info .help-block,
.control-group.info .help-inline {
  color: #3a87ad;
}

.control-group.info .checkbox,
.control-group.info .radio,
.control-group.info input,
.control-group.info select,
.control-group.info textarea {
  color: #3a87ad;
}

.control-group.info input,
.control-group.info select,
.control-group.info textarea {
  border-color: #3a87ad;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

.control-group.info input:focus,
.control-group.info select:focus,
.control-group.info textarea:focus {
  border-color: #2d6987;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
     -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
}

.control-group.info .input-prepend .add-on,
.control-group.info .input-append .add-on {
  color: #3a87ad;
  background-color: #d9edf7;
  border-color: #3a87ad;
}

input:focus:invalid,
textarea:focus:invalid,
select:focus:invalid {
  color: #b94a48;
  border-color: #ee5f5b;
}

input:focus:invalid:focus,
textarea:focus:invalid:focus,
select:focus:invalid:focus {
  border-color: #e9322d;
  -webkit-box-shadow: 0 0 6px #f8b9b7;
     -moz-box-shadow: 0 0 6px #f8b9b7;
          box-shadow: 0 0 6px #f8b9b7;
}

.form-actions {
  padding: 19px 20px 20px;
  margin-top: 20px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border-top: 1px solid #e5e5e5;
  *zoom: 1;
}

.form-actions:before,
.form-actions:after {
  display: table;
  line-height: 0;
  content: "";
}

.form-actions:after {
  clear: both;
}

.help-block,
.help-inline {
  color: #595959;
}

.help-block {
  display: block;
  margin-bottom: 10px;
}

.help-inline {
  display: inline-block;
  *display: inline;
  padding-left: 5px;
  vertical-align: middle;
  *zoom: 1;
}

.input-append,
.input-prepend {
  display: inline-block;
  margin-bottom: 10px;
  font-size: 0;
  white-space: nowrap;
  vertical-align: middle;
}

.input-append input,
.input-prepend input,
.input-append select,
.input-prepend select,
.input-append .uneditable-input,
.input-prepend .uneditable-input,
.input-append .dropdown-menu,
.input-prepend .dropdown-menu,
.input-append .popover,
.input-prepend .popover {
  font-size: 14px;
}

.input-append input,
.input-prepend input,
.input-append select,
.input-prepend select,
.input-append .uneditable-input,
.input-prepend .uneditable-input {
  position: relative;
  margin-bottom: 0;
  *margin-left: 0;
  vertical-align: top;
  -webkit-border-radius: 0 4px 4px 0;
     -moz-border-radius: 0 4px 4px 0;
          border-radius: 0 4px 4px 0;
}

.input-append input:focus,
.input-prepend input:focus,
.input-append select:focus,
.input-prepend select:focus,
.input-append .uneditable-input:focus,
.input-prepend .uneditable-input:focus {
  z-index: 2;
}

.input-append .add-on,
.input-prepend .add-on {
  display: inline-block;
  width: auto;
  height: 20px;
  min-width: 16px;
  padding: 4px 5px;
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
  text-align: center;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #eeeeee;
  border: 1px solid #ccc;
}

.input-append .add-on,
.input-prepend .add-on,
.input-append .btn,
.input-prepend .btn,
.input-append .btn-group > .dropdown-toggle,
.input-prepend .btn-group > .dropdown-toggle {
  vertical-align: top;
  -webkit-border-radius: 0;
     -moz-border-radius: 0;
          border-radius: 0;
}

.input-append .active,
.input-prepend .active {
  background-color: #a9dba9;
  border-color: #46a546;
}

.input-prepend .add-on,
.input-prepend .btn {
  margin-right: -1px;
}

.input-prepend .add-on:first-child,
.input-prepend .btn:first-child {
  -webkit-border-radius: 4px 0 0 4px;
     -moz-border-radius: 4px 0 0 4px;
          border-radius: 4px 0 0 4px;
}

.input-append input,
.input-append select,
.input-append .uneditable-input {
  -webkit-border-radius: 4px 0 0 4px;
     -moz-border-radius: 4px 0 0 4px;
          border-radius: 4px 0 0 4px;
}

.input-append input + .btn-group .btn:last-child,
.input-append select + .btn-group .btn:last-child,
.input-append .uneditable-input + .btn-group .btn:last-child {
  -webkit-border-radius: 0 4px 4px 0;
     -moz-border-radius: 0 4px 4px 0;
          border-radius: 0 4px 4px 0;
}

.input-append .add-on,
.input-append .btn,
.input-append .btn-group {
  margin-left: -1px;
}

.input-append .add-on:last-child,
.input-append .btn:last-child,
.input-append .btn-group:last-child > .dropdown-toggle {
  -webkit-border-radius: 0 4px 4px 0;
     -moz-border-radius: 0 4px 4px 0;
          border-radius: 0 4px 4px 0;
}

.input-prepend.input-append input,
.input-prepend.input-append select,
.input-prepend.input-append .uneditable-input {
  -webkit-border-radius: 0;
     -moz-border-radius: 0;
          border-radius: 0;
}

.input-prepend.input-append input + .btn-group .btn,
.input-prepend.input-append select + .btn-group .btn,
.input-prepend.input-append .uneditable-input + .btn-group .btn {
  -webkit-border-radius: 0 4px 4px 0;
     -moz-border-radius: 0 4px 4px 0;
          border-radius: 0 4px 4px 0;
}

.input-prepend.input-append .add-on:first-child,
.input-prepend.input-append .btn:first-child {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
     -moz-border-radius: 4px 0 0 4px;
          border-radius: 4px 0 0 4px;
}

.input-prepend.input-append .add-on:last-child,
.input-prepend.input-append .btn:last-child {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
     -moz-border-radius: 0 4px 4px 0;
          border-radius: 0 4px 4px 0;
}

.input-prepend.input-append .btn-group:first-child {
  margin-left: 0;
}

input.search-query {
  padding-right: 14px;
  padding-right: 4px \9;
  padding-left: 14px;
  padding-left: 4px \9;
  /* IE7-8 doesn't have border-radius, so don't indent the padding */

  margin-bottom: 0;
  -webkit-border-radius: 15px;
     -moz-border-radius: 15px;
          border-radius: 15px;
}

/* Allow for input prepend/append in search forms */

.form-search .input-append .search-query,
.form-search .input-prepend .search-query {
  -webkit-border-radius: 0;
     -moz-border-radius: 0;
          border-radius: 0;
}

.form-search .input-append .search-query {
  -webkit-border-radius: 14px 0 0 14px;
     -moz-border-radius: 14px 0 0 14px;
          border-radius: 14px 0 0 14px;
}

.form-search .input-append .btn {
  -webkit-border-radius: 0 14px 14px 0;
     -moz-border-radius: 0 14px 14px 0;
          border-radius: 0 14px 14px 0;
}

.form-search .input-prepend .search-query {
  -webkit-border-radius: 0 14px 14px 0;
     -moz-border-radius: 0 14px 14px 0;
          border-radius: 0 14px 14px 0;
}

.form-search .input-prepend .btn {
  -webkit-border-radius: 14px 0 0 14px;
     -moz-border-radius: 14px 0 0 14px;
          border-radius: 14px 0 0 14px;
}

.form-search input,
.form-inline input,
.form-horizontal input,
.form-search textarea,
.form-inline textarea,
.form-horizontal textarea,
.form-search select,
.form-inline select,
.form-horizontal select,
.form-search .help-inline,
.form-inline .help-inline,
.form-horizontal .help-inline,
.form-search .uneditable-input,
.form-inline .uneditable-input,
.form-horizontal .uneditable-input,
.form-search .input-prepend,
.form-inline .input-prepend,
.form-horizontal .input-prepend,
.form-search .input-append,
.form-inline .input-append,
.form-horizontal .input-append {
  display: inline-block;
  *display: inline;
  margin-bottom: 0;
  vertical-align: middle;
  *zoom: 1;
}

.form-search .hide,
.form-inline .hide,
.form-horizontal .hide {
  display: none;
}

.form-search label,
.form-inline label,
.form-search .btn-group,
.form-inline .btn-group {
  display: inline-block;
}

.form-search .input-append,
.form-inline .input-append,
.form-search .input-prepend,
.form-inline .input-prepend {
  margin-bottom: 0;
}

.form-search .radio,
.form-search .checkbox,
.form-inline .radio,
.form-inline .checkbox {
  padding-left: 0;
  margin-bottom: 0;
  vertical-align: middle;
}

.form-search .radio input[type="radio"],
.form-search .checkbox input[type="checkbox"],
.form-inline .radio input[type="radio"],
.form-inline .checkbox input[type="checkbox"] {
  float: left;
  margin-right: 3px;
  margin-left: 0;
}

.control-group {
  margin-bottom: 10px;
}

legend + .control-group {
  margin-top: 20px;
  -webkit-margin-top-collapse: separate;
}

.form-horizontal .control-group {
  margin-bottom: 20px;
  *zoom: 1;
}

.form-horizontal .control-group:before,
.form-horizontal .control-group:after {
  display: table;
  line-height: 0;
  content: "";
}

.form-horizontal .control-group:after {
  clear: both;
}

.form-horizontal .control-label {
  float: left;
  width: 160px;
  padding-top: 5px;
  text-align: right;
}

.form-horizontal .controls {
  *display: inline-block;
  *padding-left: 20px;
  margin-left: 180px;
  *margin-left: 0;
}

.form-horizontal .controls:first-child {
  *padding-left: 180px;
}

.form-horizontal .help-block {
  margin-bottom: 0;
}

.form-horizontal input + .help-block,
.form-horizontal select + .help-block,
.form-horizontal textarea + .help-block,
.form-horizontal .uneditable-input + .help-block,
.form-horizontal .input-prepend + .help-block,
.form-horizontal .input-append + .help-block {
  margin-top: 10px;
}

.form-horizontal .form-actions {
  padding-left: 180px;
}
div.alert-box {
border: 1px solid #e5af51;
color: #ca6b1c;
}
div.box {
font-size: 108.3%;
margin: 2px 0 15px;
padding: 20px 15px 20px 65px;
-moz-border-radius: 6px;
-webkit-border-radius: 6px;
border-radius: 6px;
}
-->
</style>
{/literal}
<section id="content">
	<header class="page-header">
		<h1 class="page-title">{$TEXT_ADD_TESTI}</h1>
	</header>
	<div class="inner-container">
		
		<div id="form_left">
			<div id="contact" class="content">
			
				{if $error eq 1}
					<div class="box alert-box">{$warning}</div>
				{/if}
				{if $error eq 2}
					<div class="box success-box">{$warning}</div>
				{/if}
			
				<form  class="form-horizontal" name="addtesti" id="addtesti" action="add_testimonial" method="post" enctype="multipart/form-data" >
					<input type="hidden" name="submitted" value="1" />
					<input type="hidden" name="page" value="x_add_testimonial_process" />
					<input type="hidden" name="page_required" value="1" />

					<div class="control-group">
						<label class="control-label" for="nama">{$TEXT_ADD_TESTI_NAME} {if $TESTI_REQ_NAME eq 1}<span>*</span>{/if}</label>
						<div class="controls">
							<input class="input-xxlarge" type="text" id="nama"  name="nama"  value="{$smarty.post.nama}">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="email">{$TEXT_ADD_TESTI_EMAIL} {if $TEXT_ADD_TESTI_EMAIL eq 1}<span>*</span>{/if}</label>
						<div class="controls">
							<input class="input-xxlarge" type="text" id="email"  name="email"  value="{$smarty.post.email}">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="image">{$TEXT_ADD_TESTI_IMG} </label>
						<div class="controls">
							<span class="name_ico"></span>
							<input class="input-xxlarge" type="file" id="button_upload_banner" name="image" />
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="pesan">{$TEXT_ADD_TESTI_CONTENT}  {if $TESTI_REQ_MSG eq 1}<span>*</span>{/if}</label>
						<div class="controls">
							<textarea  class="input-xxlarge" name="pesan"  rows="3">{$smarty.post.pesan}</textarea>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="nama">Verivication</label>
						<div class="controls">
							<span id="captcha"> 
									<img src="{$home}captcha.php?rand={$random}" border="0" align="absmiddle" id="captha_image" onclick="$('#captha_image').attr('src', '{$home}captcha.php?rand='+Math.random());" style="cursor:pointer;">
									<br>
									<div style="text-align:left;color:#f00;font-size:10px;" onclick="$('#captha_image').attr('src', '{$home}captcha.php?rand='+Math.random());">refresh captcha</div>
								</span>
								<input type="text" name="jawab" >
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="nama"><span style="color:#f00;">*</span><span class="help-inline">harus diisi</span></label>
						<div class="controls">
							<input type="submit" name="submit" value="submit" class="button"> </li>
						</div>
					</div>
					
					 
					
					
					

				</form>
			</div>
	</div>
</section>

