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
struct Index {
  @State actionBarTitle: string = "Harmony Practice"
  @State layoutStr: string = "常用的布局"
  @State buttonStr: string = "按钮样式"
  @State btnList: string = "创建列表"
  @State btnGridItem: string = "创建网格"
  @State btnSwiper: string = "创建轮播"
  @State btnMediaQuery: string = "媒体查询"


  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 18

  build() {
    Column() {
      // 标题栏
      Text(this.actionBarTitle)
        .fontColor(Color.White)
        .fontSize(20)
        .width('100%')
        .height(50)
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Bold)
        .backgroundColor(Color.Gray)


      //布局layout
      Button(this.layoutStr, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(this.btnFontSize)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + this.layoutStr + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPage',
            params: {
              title: this.layoutStr
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.layoutStr + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })

      //按钮button
      Button(this.buttonStr, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(16)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，跳转到' + this.buttonStr + '界面');
          router.pushUrl({
            url: 'pages/button/ButtonPage',
            params: {
              title: this.buttonStr
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.buttonStr + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })

      //创建列表
      Button(this.btnList, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(this.btnFontSize)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + this.btnList + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPage',
            params: {
              title: this.btnList
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.btnList + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })

      //创建网格
      Button(this.btnGridItem, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(this.btnFontSize)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + this.btnGridItem + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPage',
            params: {
              title: this.btnGridItem
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.btnGridItem + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })

      //创建轮播
      Button(this.btnSwiper, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(this.btnFontSize)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + this.btnSwiper + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPage',
            params: {
              title: this.btnSwiper
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.btnSwiper + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })

      //媒体查询
      Button(this.btnMediaQuery, { type: ButtonType.Normal })
        .margin({ top: 20 })
        .borderRadius(15)
        .backgroundColor(Color.Gray)
        .fontColor(Color.White)
        .fontSize(this.btnFontSize)
        .width(this.btnWidth)
        .height(this.btnHeight)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + this.btnMediaQuery + '界面');
          router.pushUrl({
            url: 'pages/layout/LayoutPage',
            params: {
              title: this.btnMediaQuery
            }
          }).then(() => {
            hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + this.btnMediaQuery + '界面');
          }).catch((err) => {
            hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
          })
        })



    }
  }
}