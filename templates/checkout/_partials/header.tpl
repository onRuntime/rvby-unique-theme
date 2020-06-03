{**
 * 2007-2019 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

{strip}

{block name='header_top'}
<div class="tbcmsdesktop-top-header-wrapper tbcmsheader-sticky hidden-md-down">
	<div class="container">
		<div class="tbcmsheader-outer-block row">
			<div class="col-xl-2 col-lg-2 tbcms-header-logo" id="tbcmsdesktop-logo">
				<div class="tb-header-logo">
					<a href="{$urls.base_url}">
					  <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
					</a>
				</div>
			</div>
			<div class="col-xl-8 col-lg-8 position-static tbcms-header-menu">
				{hook h='displayNavMainMenuBlock'}
			</div>

			<div class="col-xl-2 col-lg-2 tbcmsheader-nav-right">

				<div class="tb-search-account-cart-wrapper">
					<div class='tbcmssearch-wrapper' id="_desktop_search">
						{hook h='displayNavSearchBlock'}
					</div>	
					<div class='tbheader-account-wrapper'>
						<div class="tbcms-header-myaccount">
							<div class="tb-header-account">
								<div class="tb-account-wrapper">
									<button class="btn-unstyle tb-myaccount-btn">
										<span>{l s='My Account' d='Shop.Theme.Catalog'}</span>
										<i class='material-icons'>&#xe313;</i>
									</button>
									<ul class="dropdown-menu tb-account-dropdown tb-dropdown">
										<li>{hook h='displayNavLanguageBlock'}</li>
										<li>{hook h='displayNavCurrencyBlock'}</li>
										<li>{hook h='displayNavWishlistBlock'}</li>
										<li>{hook h='displayNavProductCompareBlock'}</li>
										<li>{hook h='displayNavCustomerSignInBlock'}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					{hook h='displayNavShoppingCartBlock'}
				</div>
			</div>
		</div>
	</div>
</div>
{hook h='displayNavFullWidth'}
{/block}

{include file='_partials/mobile-header.tpl'}
{/strip}
