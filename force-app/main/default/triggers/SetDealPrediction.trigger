trigger SetDealPrediction on Subscriber__c (after insert, after update) {
    if(System.isFuture()) return;
    if(ed_insights.CheckRecursive.runOnce()) {
    // custom Settings' name
    String CONFIG_NAME = 'Tenure';
    ed_insights.TriggerHandler.insertUpdateHandle(CONFIG_NAME);
   }
 }