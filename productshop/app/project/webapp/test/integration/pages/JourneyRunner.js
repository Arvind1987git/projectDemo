sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"na/project/test/integration/pages/productList",
	"na/project/test/integration/pages/productObjectPage"
], function (JourneyRunner, productList, productObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('na/project') + '/test/flp.html#app-preview',
        pages: {
			onTheproductList: productList,
			onTheproductObjectPage: productObjectPage
        },
        async: true
    });

    return runner;
});

