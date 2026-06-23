sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"projectdemo/test/integration/pages/productList",
	"projectdemo/test/integration/pages/productObjectPage"
], function (JourneyRunner, productList, productObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('projectdemo') + '/test/flp.html#app-preview',
        pages: {
			onTheproductList: productList,
			onTheproductObjectPage: productObjectPage
        },
        async: true
    });

    return runner;
});

