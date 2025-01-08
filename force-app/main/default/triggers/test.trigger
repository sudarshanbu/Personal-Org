trigger test on Account (After Update) {
  Testhandler.updateRelatedContactsTriggerHandler(Trigger.new);
}