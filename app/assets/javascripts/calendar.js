
var LEFT_CAL = Calendar.setup({
      cont: "cont",
      weekNumbers: true,
      selectionType: Calendar.SEL_MULTIPLE,
      showTime: 12
      // titleFormat: "%B %Y"
})
function initCalendar() {
LEFT_CAL.args.weekNumbers = false;
LEFT_CAL.fdow = 0;
LEFT_CAL.args.showTime = false;
LEFT_CAL.redraw();
};
initCalendar();

LEFT_CAL.addEventListener("onSelect", function(){
            var ta = jQuery("#date");
            ta.val(this.selection.print("%m/%d/%Y").join("\n"));
    });
