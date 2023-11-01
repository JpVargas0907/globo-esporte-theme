	<header class= "bg-neutral" id="banner" role="banner">
		<div class="container d-flex justify-content-between">
            <ul class="navbar-nav">
                <#list websites as website>
                    <#assign site_url = website.getUrl()/>
                    <li class="nav-item p-2">
                        <a href="${site_url}"><@globoSiteLogo site_url/></a>
                    </li>
                </#list>
            </ul>


            <#if !is_signed_in>
                <a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
            </#if>
        </div>
	</header>
