import router from '@ohos.router'
import hilog from '@ohos.hilog';
import { MyCustomDialog } from '../../dialog/MyCustomDialog';
/**
 * 添加自定义弹窗
 */
@Entry
@Component
  /**
   * @Entry表示该自定义组件为入口组件
  * @Component和@State都是装饰器
   * @Component表示自定义组件
  * @State表示组件中的状态变量，状态变量变化会触发UI刷新
   * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-basic-syntax-overview-0000001531611153-V3
   * @State允许修饰的类型：Object、class、string、number、boolean、enum类型
   */
struct AddDialogPage {
  dialogController: CustomDialogController = new CustomDialogController({
    builder: MyCustomDialog({
      cancel: this.onCancel,
      confirm: this.onAccept,
      content: "确认要退出当前界面吗？"
    }),
    alignment: DialogAlignment.Default, // 可设置dialog的对齐方式，设定显示在底部或中间等，默认为底部显示
  })

  onCancel() {
    hilog.info(0x0000, 'testTag', '%{public}s', '取消');
  }

  onAccept() {
    hilog.info(0x0000, 'testTag', '%{public}s', '同意');
    router.back()
  }

  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()
  private scroller: Scroller = new Scroller();

  build() {
    Column() {
      // 标题栏
      Stack({ alignContent: Alignment.Start }) {
        Text(this.params?.['title'])
          .fontColor(Color.White)
          .fontSize(20)
          .height('100%')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Grey)
        Stack({ alignContent: Alignment.Center }) {
          Image($r("app.media.icon_back")).width(15).height(20)
        }.height('100%').width(50).onClick(() => {
            router.back()
        })

      }.width('100%').height(50);
      //滚动列表
      Button('关闭')
        .onClick(() => {
          this.dialogController.open()
        }).margin({
        top: 30
      })

    }

  }
}