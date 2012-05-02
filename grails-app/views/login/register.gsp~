<html>
<head>
  <title>User Registration</title>
  <meta name="layout" content="main" />
</head>
<body>

<g:form class="simpleform" url="[controller:'user',action:'register']">
  <fieldset>
    <legend>User Registration</legend>

    <p class="info">
	<br>
    </p>
    <g:hasErrors bean="${user}">
      <div class="errors">
        <g:renderErrors bean="${user}"/>
      </div>
    </g:hasErrors>
    
    <label for="username">Username</label>
    <div class="rightcol">
      <g:textField name="username" value="${user?.username}"
        class="${hasErrors(bean:user,field:'username','errors')}"/>
    </div>

    <label for="password">Password</label>
    <div class="rightcol">
      <g:passwordField name="password"
        class="${hasErrors(bean:user,field:'password','errors')}" />
    </div>

    <label for="confirm">Confirm Password</label>
    <div class="rightcol">
      <g:passwordField name="confirm"
        class="${hasErrors(bean:user,field:'password','errors')}" />
    </div>
      <label>&nbsp;</label>
    <div class="rightcol">
      <g:submitButton class="button" name="submitButton" value="Create Account" />
    </div>
  </fieldset>
</g:form>
</body>
</html>

