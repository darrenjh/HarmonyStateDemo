@CustomDialog
export struct MyCustomDialog {
  controller: CustomDialogController
  cancel: () => void
  confirm: () => void
  private content: String

  MyCustomDialog(text: String) {
    this.content = text
  }

  build() {
    Column() {
      Text(`${this.content}`).fontSize(20).margin({ top: 20, bottom: 20 })
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('取消')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(0xffffff).fontColor(Color.Black)
        Button('确认')
          .onClick(() => {
            this.controller.close()
            this.confirm()
          }).backgroundColor(0xffffff).fontColor(Color.Red)
      }.margin({ bottom: 10 })
    }
  }
}