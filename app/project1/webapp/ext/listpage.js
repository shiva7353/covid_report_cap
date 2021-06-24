sap.ui.define(["sap/ui/core/mvc/ControllerExtension"], function(ControllerExtension) {
    "use strict";
    return ControllerExtension.extend("project1.ext.listpage", {
        onInit: function() {
           debugger;
          //  this.getView().getContent()[0].getContent().setIgnoredFields("OrderID,OrderDate")
        }
    });
});