@istest
private class CreateCaseTrigger_Test {

    Static testmethod void caseTrigger(){
         Contact newContact = new Contact();
         Case newCase = new Case();
         newContact.LastName = 'test';
               
          	insert newContact;
        	String contactId = newContact.Id;
            //check to make sure the Contact was created.
        	System.assert(String.isNotBlank(contactId));
      
        //test priority levels  -- testing the switch statement.
        String Primary, Secondary, Tertiary;
        Primary = PriorityLevelHandler.setPriorityLevelTrigger('Primary');
        System.assertEquals('High', Primary);
        
        Secondary = PriorityLevelHandler.setPriorityLevelTrigger('Secondary');
        System.assertEquals('Medium', Secondary);
        
        Tertiary = PriorityLevelHandler.setPriorityLevelTrigger('Tertiary');
         System.assertEquals('Low', Tertiary);
        
    } 
}