$(function() {
    infuser.defaults.templateUrl = "templates";
    //infuser.defaults.templatePrefix = "SomePrefix"
    //infuser.defaults.templateSuffix = "SomeSuffix"

    function State(id, name, cities) {
        return {
            id: ko.observable(id),
            name: ko.observable(name),
            cities: ko.observableArray(cities || ["Dunno"])
        }
    }
    var viewModel = {
        isEditable: ko.observable(false),
        items: ko.observableArray([
                new State(1, "Tennessee", [
                    {name: "Nashville"}, {name: "Chattanooga"}, {name: "Franklin"}, {name: "Spring Hill"}, {name: "Signal Mountain"}
                ]),
                new State(2, "Georgia", [
                    {name: "Atlanta"}, {name: "Savannah"}, {name: "Snellville"}, {name: "Stone Mountain"}
                ]),
                new State(3, "Texas", [
                    {name: "Dallas"}, {name: "Austin"}, {name: "Houston"}, {name: "San Antonio"}, {name: "Katy"}
                ])
            ]),
        whichTemplateToUse: function() {
            return viewModel.isEditable() ? 'edit' : 'view';
        }
    };

    ko.applyBindings(viewModel);
});