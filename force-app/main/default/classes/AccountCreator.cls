public with sharing class AccountCreator {
    @AuraEnabled
    public static Id createAccount(String name, String phone, String website) {
        if (String.isBlank(name)) {
            throw new AuraHandledException('Account Name is required.');
        }
        Account a = new Account(
            Name = name,
            Phone = phone,
            Website = website
        );
        insert a;
        return a.Id;
    }
}
