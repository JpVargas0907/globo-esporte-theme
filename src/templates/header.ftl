	<header class= "bg-neutral p-2" id="banner" role="banner">
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
                <a class="btn btn-outline-secondary" data-redirect="${is_login_redirect_required?string}" href="/c/portal/login" id="sign-in" rel="nofollow">Entrar</a>
            </#if>
        </div>
	</header>
