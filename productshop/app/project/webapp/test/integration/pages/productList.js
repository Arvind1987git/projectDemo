sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'na.project',
            componentId: 'productList',
            contextPath: '/product'
        },
        CustomPageDefinitions
    );
});