/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class aiGEO_ProximityLocatorTest {

    static testMethod void proximityLocatorUnitTest() {
		// Test distance from CA to FL
    	Double lat1 = 37.386339;
    	Double lat2 = 27.8132980;
    	Double lon1 = -122.085823;
    	Double lon2 = -82.6067290;

		Double db = aiGEO_ProximityLocator.calculateDistance(lat1, lon1, lat2, lon2);
		System.assertEquals(2372.542345886539,db);
	
		Double sr1 = aiGEO_ProximityLocator.getSearchRadius();
	    System.assertEquals(20.00, sr1); // Test search in Miles
	
		Double er1 = aiGEO_ProximityLocator.getEarthRadius();
        System.assertEquals(3959.00,er1); // Test radius in miles
    }
}