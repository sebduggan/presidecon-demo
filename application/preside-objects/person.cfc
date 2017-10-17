/**
 * @labelField  name
 */

component dataManagerGroup="Team" {
	property name="name"  type="string" dbtype="varchar" maxlength=50 required=true;
	property name="bio"   type="string" dbtype="text";
	property name="photo" relationship="many-to-one" relatedTo="asset" allowedTypes="image";

}