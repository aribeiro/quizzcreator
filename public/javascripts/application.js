Base = { }
Base.Grid = Class.create({
	initialize: function() {
		var self = this;
		$('grid_form').getElementsBySelector('.check_all').each(function(item) {
			item.onclick = function() { self.checkAll(); }
		});
		$('grid_form').getElementsBySelector('.uncheck_all').each(function(item) {
			item.onclick = function() { self.unCheckAll(); }
		});		
	},
	
	checkAll: function() {
		this.check(true);		
	},
	
	unCheckAll: function() {
		this.check(false);
	},
	
	check: function(option) {
		$('grid_form').getElementsBySelector('input').each(function(item) {
			item.checked = option;
		});
	}
});

Base.NestedAttributesJs = {  
  add : function(e) {  
    element = Event.findElement(e);  
		object_id = element.href.replace(/.*#/, '');
    template = eval(object_id + '_template');  
    $(object_id).insert( { before: Base.NestedAttributesJs.replace_ids(template) } );  
  },  
  replace_ids : function(template){  
    var new_id = new Date().getTime();  
    return template.replace(/NEW_RECORD/g, new_id);  
  }  
}  
  
Event.observe(window, 'load', function(){  
  $$('.add').each(function(link){
    link.observe('click', Base.NestedAttributesJs.add);  
  });  
});