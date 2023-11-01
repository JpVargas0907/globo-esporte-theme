<#--
This file allows you to override and define new FreeMarker variables.
-->

<#--  SERVIÇOS  -->
<#assign WebsiteLocalService = serviceLocator.findService("com.liferay.portal.kernel.service.WebsiteLocalService") />

<#-- VARIÁVEIS GLOBAIS -->
<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "borderless"}) />
<#assign searchBarPreferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "borderless", "searchScope": "everything"}) />
<#assign companyId = getterUtil.getLong(layout.companyId) />
<#assign groupId = getterUtil.getLong(layout.groupId) />
<#assign companyClassName = themeDisplay.getCompany().getModelClassName() />
<#assign companyClassPk = themeDisplay.getCompany().getCompanyId() />

<#-- INFORMAÇÕES GERAIS -->
<#assign websites = WebsiteLocalService.getWebsites() />


<#macro globoSiteLogo url>
	<#if url?contains("www.globo.com")>
		<p class="globo-text">globo.com</p>
	<#elseif url?contains("g1")>
		<p class="g1-text">g1</p>
	<#elseif url?contains("ge")>
		<p class="ge-text">ge</p>
	<#elseif url?contains("gshow")>
		<p class="gshow-text">gshow</p>
	<#elseif url?contains("globoplay")>
        <p class="globoplay-text">globoplay</p>
	<#else>
		<i class="las la-link"></i>
	</#if>
</#macro>