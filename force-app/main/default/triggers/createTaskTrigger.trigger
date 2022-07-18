trigger createTaskTrigger on Case (after insert) {
 List<Task> taslist = new List<Task>();
  for(Case cas : Trigger.new) {
  String priority = cas.Priority;
   Task task     =  new Task();
   task.Status = 'Not Started';
   task.Subject = 'Welcome Call for Case Number ' + cas.CaseNumber;
   task.Priority = 'Normal';
   task.OwnerId = cas.OwnerId;
   task.ActivityDate = createTaskDueDateTriggerHandler.handleTaskDueDateTrigger(priority);
  

   taslist.add(task);
   
  
}
   insert taslist;
   
}