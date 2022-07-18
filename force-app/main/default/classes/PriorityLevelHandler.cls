public with sharing class PriorityLevelHandler {
    
    public static String setPriorityLevelTrigger(String level) {
      
		String priority;
           switch on level {

                  when 'Primary' {        
         priority = 'High';
         }

                         
           when 'Secondary' {       
        priority = 'Medium';
    }
    
         when 'Tertiary' {        
      priority = 'Low';
    }
 when else {        
        priority = 'Medium';
    }

}
return priority; }
     
}