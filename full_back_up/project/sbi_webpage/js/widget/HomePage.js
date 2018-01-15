Clazz.createPackage("com.test.widget");

Clazz.com.test.widget.HomePage = Clazz.extend(Clazz.WidgetWithTemplate, {
	name : "home",
	templateUrl : "../template/home-page.tmp",
	defaultContainer : "widget\\:page",
	projectName : null,
	projectId : null,
	
		initialize: function()
		{
		this.onClickHeader = new signals.Signal();

	},
		Message : function(content){
		alert("SORRY LOGIN PAGE IS UPDATING");
	},

    preRender : function(whereToRender, renderFunction){
		var self = this;
		var api = new Clazz.com.test.widget.API();
		api.request(function(response){
			self.projectName = response.projectName;
			self.projectId = response.projectId;
			self.data = {"surplusMembers":response.surplusMembers, "projectName":self.projectName, "projectId":self.projectId}
			renderFunction(self.data, whereToRender);
		});
		
	},
	bindUI : function(){
		var self = this;
		$('.f').click(function(){
			self.onClickHeader.dispatch();
			});
	},
	postRender : function(element){
		
	},
});
