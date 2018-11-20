myText = [];

if(other.inInventory && !other.grab) {
	myText[0] = "That doesn't seem right...";
	ReAddObjectToInventory(other);
	event_inherited();
	myText = orig_text;
}

