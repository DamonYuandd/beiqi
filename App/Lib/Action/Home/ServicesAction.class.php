<?php
/**
 *
 * 关于我们控制器
 * @author uclnn
 *
 */
class ServicesAction extends HomeAction {

	function _initialize() {
		parent::_initialize ();
	}

	function m_index() {
		$this->display($this->mobile_theme.':Services:index');
	}
	
	function m_show() {
		$this->assign('headTitle', $obj['title']);
		$this->display($this->mobile_theme.':Services:show');
	}
	function index(){
		$this->display($this->web_theme.':Services:index');
	}
	function show(){
		$this->display($this->web_theme.':Services:show');
	}

}
?>