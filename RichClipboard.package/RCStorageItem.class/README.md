An RCStorageItem is a wrapper for clipboard entries (text or any kind of object).

Instance Variables  
	content:				<Object>  
					
## Design Choice

Originally, RichClipboard stored the objects directly, but this raised a couple problems. First, when a clipboard entry is stored multiple times and we want to remove it by reference of the object, it is unclear which entry to remove. In addition, we had no control over how entries should be displayed (for example, RichText displayed with formatting instead of raw).