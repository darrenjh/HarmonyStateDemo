import router from '@ohos.router'
import hilog from '@ohos.hilog'

@Entry
@Component
struct SplashPage {
  @State message: string = '开屏'
  @State countDownFrom: number = 3
  private timerId: number = -1

  aboutToAppear() { //自定义组件生命周期函数，build之前执行的阶段
    this.timerId = setInterval(() => {
      if (this.countDownFrom <= 1) {
        clearTimeout(this.timerId) // countDownFrom小于等于1时清除计时器
        toNext();
      }
      hilog.info(0x0000, 'testTag', '%{public}s', '倒计时-->' + this.countDownFrom);
      this.countDownFrom -= 1
    }, 1000)
  }

  aboutToDisappear(): void { //自定义组件生命周期函数，组件实例被销毁
    if (this.timerId > 0) {
      clearTimeout(this.timerId)
      this.timerId = -1
    }
  }

  build() {
    Stack({ alignContent: Alignment.TopEnd }) {
      Image("https://img0.baidu.com/it/u=3838490271,1177851877&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889")
        .alt($r('app.media.splash_default'))

      Column() {
        Text('Harmony OS ').fontSize(40).fontWeight(FontWeight.Bold).fontColor(Color.White).margin({
          top: 200
        })
        Text('ArkTS 的练习Demo').fontSize(20).fontWeight(FontWeight.Normal).fontColor(Color.White).margin({
          top: 20
        })

      }.width('100%').height('100%')

      Column() {
        Row() {
          Row() {
            Image($r('app.media.icon')).width(50).height(40).borderRadius(10)
            Text(`开屏`).fontColor(Color.White).textAlign(TextAlign.Center).fontSize(30).margin({
              left: 10
            })
          }.alignItems(VerticalAlign.Center)

        }.height('100%').alignItems(VerticalAlign.Bottom)
      }.width('100%').alignItems(HorizontalAlign.Center).margin({
        bottom: 30
      })

      Text(`跳过(${this.countDownFrom})`)
        .fontSize(12)
        .fontColor(Color.White)
        .width(60)
        .height(30)
        .textAlign(TextAlign.Center)
        .margin({
          top: 30,
          right: 30
        })
        .onClick(() => {
          clearTimeout(this.timerId)
          toNext();
        })
        .borderRadius(15)
        .backgroundColor(Color.Orange)
    }.width('100%').height('100%')
  }

  onPageShow() {
    hilog.info(0x0000, 'testTag', '%{public}s', '组件在前台');
  }

  onPageHide() {
    hilog.info(0x0000, 'testTag', '%{public}s', '组件在后台');

  }

  onBackPress() {
    hilog.info(0x0000, 'testTag', '%{public}s', '组件返回');
  }
}

function toNext() {
  router.replaceUrl({
    url: 'pages/Index'
  }).then(() => {
    hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到Index界面');
  }).catch((err) => {
    hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
  })


}