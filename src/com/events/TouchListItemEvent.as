package com.events
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import com.thanksmister.touchlist.renderers.ITouchListItemRenderer;
	
	public class TouchListItemEvent extends Event
	{
		public static const ITEM_SELECTED:String = "itemSelected";
		public static const ITEM_PRESS:String = "itemPressed";
		
		public var renderer:ITouchListItemRenderer;
		
		public function TouchListItemEvent(type:String, renderer:ITouchListItemRenderer, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.renderer = renderer;
		}
	}
}