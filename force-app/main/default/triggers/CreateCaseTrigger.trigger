trigger CreateCaseTrigger on Contact (after insert) {
  List<Case> caslist = new List<Case>();
  for(Contact con : Trigger.new) {
         Case cas     =  new Case();
         cas.Status   =  'Working';
         cas.Origin   =  'New Contact';
         cas.OwnerId  =  con.OwnerId;         
         //  To link the caseid to the contact id. (parent)
         cas.ContactId =   con.Id;
         cas.Priority = PriorityLevelHandler.setPriorityLevelTrigger(con.Level__c); 
     caslist.add(cas);
      

  }
    insert caslist;
}