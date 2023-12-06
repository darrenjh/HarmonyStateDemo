import router from '@ohos.router'
import hilog from '@ohos.hilog';

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
struct LayoutPage {
  @State btnRowColumn: string = "线性布局"
  @State btnStack: string = "层叠布局"
  @State btnFlex: string = "弹性布局"
  @State btnRelative: string = "相对布局"
  @State btnGrdRowCol: string = "栅格布局"
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()

  build() {
    Column() {
      // 标题栏
      Row() {
        Text('返回')
          .fontColor(Color.White)
          .fontSize(20)
          .padding({
            left: 20,
            right:20
          })
          .height('100%')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Orange)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.back()
          })
        Text(this.params?.['title'])
          .fontColor(Color.White)
          .fontSize(20)
          .height('100%')
          .width('100%')
          .padding({
            left: 90,
          })
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Grey)
      }.width('100%').height(50);




      //布局layout
      Button(this.btnRowColumn, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(this.btnFontSize)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + this.btnRowColumn + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPageDetail',
            params: {
              title: this.btnRowColumn
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.btnRowColumn + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })
      //按钮button
      Button(this.btnStack, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(16)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，跳转到' + this.btnStack + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPageDetail',
            params: {
              title: this.btnStack
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.btnStack + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })
    }

  }
}