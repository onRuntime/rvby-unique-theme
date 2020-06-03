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
{foreach $linkBlocks as $linkBlock}
	<div class="tbfooter-main-link tbfooter-mainlink-wrapper bottom-to-top hb-animate-element col-xl-3 col-lg-3 col-md-12 col-xs-12 col-sm-12">
		<div class="tbfooter-main-inner-wrapper">
			{assign var=_expand_id value=10|mt_rand:100000}
			<div class="tbfooter-title-wrapper collapsed" data-target="#footer_sub_menu_link{$_expand_id}" data-toggle="collapse">
				<span class="tbfooter-title">{$linkBlock.title}</span>
				<span class="float-xs-right tbfooter-toggle-icon-wrapper">
					<span class="navbar-toggler collapse-icons tbfooter-toggle-icon">
						<i class="material-icons add">&#xE313;</i>
						<i class="material-icons remove">&#xE316;</i>
					</span>
				</span>
			</div>
			<ul id="footer_sub_menu_link{$_expand_id}" class="collapse tbfooter-link-wrapper">
				{foreach $linkBlock.links as $link}
					<li>
						<a id="{$link.id}-{$linkBlock.id}" class="{$link.class}" href="{$link.url}" title="{$link.description}" {if !empty($link.target)} target="{$link.target}" {/if} >
							{$link.title}
						</a>
					</li>
				{/foreach}
			</ul>
		</div>
	</div>
{/foreach}
{/strip}
