// scripts/AssignPermset.apex
String permSetApiName = 'AccountCustomFields';
String targetUsername  = 'matt@autorabit.sandbox.com';

PermissionSet ps = [
  SELECT Id, Name
  FROM PermissionSet
  WHERE Name = :permSetApiName
  LIMIT 1
];

User u = [
  SELECT Id, Username
  FROM User
  WHERE Username = :targetUsername
  LIMIT 1
];

Boolean exists = [
  SELECT COUNT()
  FROM PermissionSetAssignment
  WHERE AssigneeId = :u.Id AND PermissionSetId = :ps.Id
] > 0;

if (!exists) {
  insert new PermissionSetAssignment(AssigneeId = u.Id, PermissionSetId = ps.Id);
  System.debug('Assigned ' + permSetApiName + ' to ' + targetUsername);
} else {
  System.debug('Already assigned: ' + permSetApiName + ' -> ' + targetUsername);
}
