<nav class="navbar navbar-dark bg-primary main-menu pt-2 pb-2">
	<div class="container d-flex justify-content-between">
		<div class=" d-flex flex-column">
			<button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="text-white text-bold"><i class="las la-bars mr-2"></i>MENU</span>
			</button>

			<div class="menu collapse position-fixed" id="navbarToggleExternalContent">
				<div class="bg-light h-100 p-4">
					<ul class="navbar-nav menubar p-0" role="menubar">
						<#list nav_items as nav_item>
							<#assign
								nav_item_attr_has_popup = ""
								nav_item_css_class = ""
								nav_item_layout = nav_item.getLayout()
							/>

							<#if nav_item.isSelected()>
								<#assign
									nav_item_attr_has_popup = "aria-haspopup='true'"
									nav_item_css_class = "selected"
								/>
							</#if>

							<li class="nav-item ${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
								<a class="nav-link" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>

								<#if nav_item.hasChildren()>
									<ul class="child-menu" role="menu">
										<#list nav_item.getChildren() as nav_child>
											<#assign
												nav_child_css_class = ""
											/>

											<#if nav_item.isSelected()>
												<#assign
													nav_child_css_class = "selected"
												/>
											</#if>

											<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
												<a href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
											</li>
										</#list>
									</ul>
								</#if>
							</li>
						</#list>
					</ul>
				</div>
			</div>
		</div>

		<img height="80px" src="${company_logo}" />
		<@liferay.search_bar />
	</div>
</nav>

