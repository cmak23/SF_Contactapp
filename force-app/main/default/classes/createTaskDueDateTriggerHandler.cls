public class createTaskDueDateTriggerHandler {

      public static Date handleTaskDueDateTrigger(String priorityLevel) {
        Task task = new Task();
      //  Case cas = new Case();
        task.ActivityDate = Date.today();
              

           switch on priorityLevel {

                  when 'High' {        
         task.ActivityDate = task.ActivityDate.addDays(7) ;
         }

                         
           when 'Medium' {       
         task.ActivityDate = task.ActivityDate.addDays(14) ;
    }
    
         when 'Low' {        
        task.ActivityDate = task.ActivityDate.addDays(21) ;
    }
 when else {        
         task.ActivityDate = task.ActivityDate.addDays(21) ;
    }
               

}
return task.ActivityDate;}
    
    
}