Extension: DeleteUser
Id: ext-delete-user
Title: "Delete User"
Description: "משתמש מוחק"
Context: DomainResource
* ^url = $ext-delete-user
* url 1..1
* value[x] only Reference(DGMCPractitioner)
* valueReference.reference 1..1
