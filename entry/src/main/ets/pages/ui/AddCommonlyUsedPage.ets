import router from '@ohos.router'
import hilog from '@ohos.hilog';
import promptAction from '@ohos.promptAction';
/**
 * 添加常用组件
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
struct AddCommonlyUsedPage {
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()
  private scroller: Scroller = new Scroller();
  @State progressValue: number = 0 // 设置进度条初始值为0

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
      Scroll(this.scroller) {
        //Column容器中，space属性设置排列方向上子元素的间距
        Column() {
          Text('创建按钮').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          Text('创建不包含子组件的按钮。').margin({
            top: 10
          })

          Button('Ok')
            .borderRadius(8)
            .backgroundColor(0x317aff)
            .width(90)
            .margin({
              top: 5
            })
            .height(40)
          //stateEffect是否开启点击效果
          Button('Ok', { type: ButtonType.Normal, stateEffect: false })
            .borderRadius(8)
            .margin({
              top: 5
            })
            .backgroundColor(0x317aff)
            .width(90)
            .height(40)

          Text('创建包含子组件的按钮。').margin({
            top: 30
          })
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Row() {
              Image($r('app.media.icon')).width(20).height(20).margin({ left: 12 })
              Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
            }.alignItems(VerticalAlign.Center)
          }
          .margin({
            top: 10
          })
          .borderRadius(8)
          .backgroundColor(Color.Gray)
          .width(90)
          .height(50)

          Text('设置按钮类型').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          Text('Capsule（胶囊类型）').margin({
            top: 10
          })
          Button('Disable', { type: ButtonType.Capsule, stateEffect: false })
            .backgroundColor(Color.Gray)
            .margin({
              top: 10
            })
            .width(90)
            .height(40)

          Text('Circle（圆形按钮）').margin({
            top: 30
          })
          Button('Circle', { type: ButtonType.Circle, stateEffect: false })
            .backgroundColor(Color.Gray)
            .margin({
              top: 10
            })
            .width(90)
            .height(90)

          Text('Circle（圆形按钮）').margin({
            top: 30
          })
          Button('Normal', { type: ButtonType.Normal, stateEffect: false })
            .backgroundColor(Color.Gray)
            .margin({
              top: 10
            })
            .width(90)
            .height(40)

          Text('自定义按钮样式').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          Text('设置边框弧度').margin({
            top: 10
          })
          Button('circle border', { type: ButtonType.Normal })
            .borderRadius(20)
            .height(40)

          Text('设置文本样式。').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          Button('font style', { type: ButtonType.Normal })
            .fontSize(20)
            .fontColor(Color.Pink)
            .fontWeight(800)

          Text('设置背景颜色').margin({
            top: 30
          })
          Button('font style', { type: ButtonType.Normal })
            .fontSize(20)
            .backgroundColor(0xF55A42)
            .fontColor(Color.Pink)
            .fontWeight(800)


          Text('用作功能按钮').margin({
            top: 30
          })
          Button({ type: ButtonType.Circle, stateEffect: true }) {
            Image($r('app.media.icon')).width(30).height(30)
          }.width(55).height(55).margin({ left: 20 }).backgroundColor(0xF55A42)

          Text('创建单选框并添加事件').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          Row() {
            Radio({ value: 'Radio1', group: 'radioGroup' })
              .checked(false).onChange((isChecked: boolean) => {
              if (isChecked) {
                promptAction.showToast({ message: `${isChecked}` })
              }
              hilog.info(0x0000, 'testTag', '%{public}s', `isChecked${isChecked}`);
            })
            Radio({ value: 'Radio2', group: 'radioGroup' })
              .checked(true).onChange((isChecked: boolean) => {
              hilog.info(0x0000, 'testTag', '%{public}s', `isChecked${isChecked}`);
              if (isChecked) {
                promptAction.showToast({ message: `${isChecked}` })
              }
            })
          }.alignItems(VerticalAlign.Center)

          Text('切换按钮').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          Text('创建包含子组件的Toggle').margin({
            top: 10
          })
          Row() {
            Toggle({ type: ToggleType.Button, isOn: false }) {
              Text('status button')
                .fontColor('#182431')
                .fontSize(12)
            }.width(100)

            Toggle({ type: ToggleType.Button, isOn: true }) {
              Text('status button')
                .fontColor('#182431')
                .fontSize(12)
            }.width(100)
          }.alignItems(VerticalAlign.Center)

          Text('通过selectedColor属性设置Toggle打开选中后的背景颜色。').margin({
            top: 30
          })
          Row() {
            Toggle({ type: ToggleType.Button, isOn: true }) {
              Text('status button')
                .fontColor('#182431')
                .fontSize(12)
            }.width(100).selectedColor(Color.Pink)

            Toggle({ type: ToggleType.Checkbox, isOn: true })
              .selectedColor(Color.Pink)
            Toggle({ type: ToggleType.Switch, isOn: true })
              .selectedColor(Color.Pink)
          }.alignItems(VerticalAlign.Center)

          Text('通过switchPointColor属性设置Switch类型的圆形滑块颜色，仅对type为ToggleType.Switch生效。').margin({
            top: 30
          })
          Row() {
            Toggle({ type: ToggleType.Switch, isOn: false })
              .switchPointColor(Color.Pink)
              .onChange((isOn: boolean) => {
                promptAction.showToast({ message: `开关状态${isOn}` })
              })

            Toggle({ type: ToggleType.Switch, isOn: true })
              .switchPointColor(Color.Pink)
              .onChange((isOn: boolean) => {
                promptAction.showToast({ message: `开关状态${isOn}` })
              })

          }.alignItems(VerticalAlign.Center)


          Text('创建进度条').fontWeight(FontWeight.Bold).margin({ top: 30 })

          Progress({ value: 24, total: 100, type: ProgressType.Linear }).margin({
            top: 10
          }) // 创建一个进度总长为100，初始进度值为24的线性进度条

          Text('ProgressType.Linear（线性样式）').margin({ top: 30 })
          Row() {
            Progress({ value: 20, total: 100, type: ProgressType.Linear }).width(100).height(10)
            Progress({ value: 20, total: 100, type: ProgressType.Linear }).width(10).height(100).margin({
              left: 10
            })

          }.alignItems(VerticalAlign.Center).margin({
            top: 10
          })

          Text(' ProgressType.Ring（环形无刻度样式）').margin({ top: 30 })
          Row() {
            // 从左往右，1号环形进度条，默认前景色为蓝色，默认strokeWidth进度条宽度为2.0vp
            Progress({ value: 10, total: 100, type: ProgressType.Ring }).width(100).height(100)
            // 从左往右，2号环形进度条
            Progress({ value: 20, total: 100, type: ProgressType.Ring }).width(100).height(100)
              .color(Color.Grey) // 进度条前景色为灰色
              .style({ strokeWidth: 15 }) // 设置strokeWidth进度条宽度为15.0vp

          }.alignItems(VerticalAlign.Center).margin({
            top: 10
          })

          Text(' ProgressType.Ring（环形有刻度样式）').margin({ top: 30 })
          Row() {
            Progress({ value: 20, total: 100, type: ProgressType.ScaleRing }).width(80).height(80)
              .backgroundColor(Color.Black)
              .style({ scaleCount: 20, scaleWidth: 5 }) // 设置环形有刻度进度条总刻度数为20，刻度宽度为5vp
            Progress({ value: 20, total: 100, type: ProgressType.ScaleRing })
              .width(80)
              .height(80)
              .backgroundColor(Color.Black)
              .style({ strokeWidth: 15, scaleCount: 20, scaleWidth: 5 }) // 设置环形有刻度进度条宽度15，总刻度数为20，刻度宽度为5vp
              .margin({ left: 5, right: 5 })
            Progress({ value: 20, total: 100, type: ProgressType.ScaleRing }).width(80).height(80)
              .backgroundColor(Color.Black)
              .style({ strokeWidth: 15, scaleCount: 20, scaleWidth: 3 }) // 设置环形有刻度进度条宽度15，总刻度数为20，刻度宽度为3vp


          }.alignItems(VerticalAlign.Center).margin({
            top: 10
          })

          Text(' ProgressType.Eclipse（圆形样式）').margin({ top: 30 })

          Row() {
            Progress({ value: 20, total: 100, type: ProgressType.Eclipse }).width(80).height(80)
              .backgroundColor(Color.Black)
              .style({ scaleCount: 20, scaleWidth: 5 }) // 设置环形有刻度进度条总刻度数为20，刻度宽度为5vp
            Progress({ value: 20, total: 100, type: ProgressType.Eclipse })
              .width(80)
              .height(80)
              .backgroundColor(Color.Black)
              .style({ strokeWidth: 15, scaleCount: 20, scaleWidth: 5 }) // 设置环形有刻度进度条宽度15，总刻度数为20，刻度宽度为5vp
              .margin({ left: 5, right: 5 })
            Progress({ value: 20, total: 100, type: ProgressType.Eclipse }).width(80).height(80)
              .backgroundColor(Color.Black)
              .style({ strokeWidth: 15, scaleCount: 20, scaleWidth: 3 }) // 设置环形有刻度进度条宽度15，总刻度数为20，刻度宽度为3vp


          }.alignItems(VerticalAlign.Center).margin({
            top: 10
          })


          Text(' ProgressType.Capsule（胶囊样式）').margin({ top: 30 })

          Row() {
            Progress({ value: 10, total: 150, type: ProgressType.Capsule }).width(100).height(50)
            Progress({ value: 20, total: 150, type: ProgressType.Capsule })
              .width(50)
              .height(100)
              .color(Color.Grey)
              .margin({
                left: 20, right: 20
              })
            Progress({ value: 50, total: 150, type: ProgressType.Capsule })
              .width(50)
              .height(100)
              .backgroundColor(Color.Black)

          }.alignItems(VerticalAlign.Center).margin({
            top: 10
          })

          Progress({ value: 0, total: 100, type: ProgressType.Capsule })
            .width(200)
            .height(50)
            .style({ strokeWidth: 50 })
            .value(this.progressValue)
            .margin({
              top: 10
            })
          Button("进度条+5")
            .onClick(() => {
              this.progressValue += 5
              if (this.progressValue > 100) {
                this.progressValue = 0
              }
            }).margin({
            top: 5
          })

          Text("创建文本").fontWeight(FontWeight.Bold).margin({
            top: 30
          })

          Text("引用Resource资源").margin({
            top: 10
          })
          Text($r('app.string.app_name')).border({
            width: 1
          }).padding(10)

          Text('添加子组件').margin({
            top: 10
          })
          Text() {
            Span('子组件Span')
          }

          Text('添加子组件文字装饰').margin({
            top: 10
          })

          Text() {
            Span('我是Span1，').fontSize(16).fontColor(Color.Grey)
              .decoration({ type: TextDecorationType.LineThrough, color: Color.Red })
            Span('我是Span2').fontColor(Color.Blue).fontSize(16)
              .fontStyle(FontStyle.Italic)
              .decoration({ type: TextDecorationType.Underline, color: Color.Black })
            Span('，我是Span3').fontSize(16).fontColor(Color.Grey)
              .decoration({ type: TextDecorationType.Overline, color: Color.Green })
            Span('I am Upper-span').fontSize(12)
              .textCase(TextCase.UpperCase)
          }
          .borderWidth(1)
          .padding(10)

          Text('左对齐')
            .width(300)
            .textAlign(TextAlign.Start)
            .border({ width: 1 })
            .padding(10)
          Text('中间对齐')
            .width(300)
            .textAlign(TextAlign.Center)
            .border({ width: 1 })
            .padding(10)
          Text('右对齐')
            .width(300)
            .textAlign(TextAlign.End)
            .border({ width: 1 })
            .padding(10)

          Text('This is the setting of textOverflow to Clip text content This is the setting of textOverflow to None text content. This is the setting of textOverflow to Clip text content This is the setting of textOverflow to None text content.')
            .width(250)
            .textOverflow({ overflow: TextOverflow.None })
            .maxLines(1)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
          Text('我是超长文本，超出的部分显示省略号。I am an extra long text, with ellipses displayed for any excess。')
            .width(250)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
          Text('This is the text')
            .decoration({
              type: TextDecorationType.LineThrough,
              color: Color.Red
            })
            .borderWidth(1).padding(10).margin(5)
          Text('This is the text')
            .decoration({
              type: TextDecorationType.Overline,
              color: Color.Red
            })
            .borderWidth(1).padding(10).margin(5)
          Text('This is the text')
            .decoration({
              type: TextDecorationType.Underline,
              color: Color.Red
            })
            .borderWidth(1).padding(10).margin(5)
          Text('This is the text content with baselineOffset 0.')
            .baselineOffset(0)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)
          Text('This is the text content with baselineOffset 30.')
            .baselineOffset(30)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)

          Text('This is the text content with baselineOffset -20.')
            .baselineOffset(-20)
            .fontSize(12)
            .border({ width: 1 })
            .padding(10)
            .width('100%')
            .margin(5)

          Text('我的最大字号为30，最小字号为5，宽度为250，maxLines为1')
            .width(250)
            .maxLines(1)
            .maxFontSize(30)
            .minFontSize(5)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Text('我的最大字号为30，最小字号为5，宽度为250，maxLines为2')
            .width(250)
            .maxLines(2)
            .maxFontSize(30)
            .minFontSize(5)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Text('我的最大字号为30，最小字号为15，宽度为250,高度为50')
            .width(250)
            .height(50)
            .maxFontSize(30)
            .minFontSize(15)
            .border({ width: 1 })
            .padding(10)
            .margin(5)
          Text('我的最大字号为30，最小字号为15，宽度为250,高度为100')
            .width(250)
            .height(100)
            .maxFontSize(30)
            .minFontSize(15)
            .border({ width: 1 })
            .padding(10)
            .margin(5)

          Text("这是一段可复制文本")
            .fontSize(30)
            .copyOption(CopyOptions.InApp)

          Text('点我')
            .onClick(() => {
              promptAction.showToast({ message: '我是Text的点击响应事件' });
            })

          Text('文本输入框').fontWeight(FontWeight.Bold).margin({
            top: 30
          })
          TextInput({ placeholder: '单行文本输入框' }).type(InputType.Normal).onChange((vaule: String) => {
            hilog.info(0x0000, 'testTag', '%{public}s', `value:` + vaule);

          }).onFocus(()=>{
            hilog.info(0x0000, 'testTag', '%{public}s', `获得焦点`);
          })
          TextInput({ placeholder: '单行密码输入框' }).type(InputType.Password)
          TextInput({ placeholder: '单行数字输入框' }).type(InputType.PhoneNumber)

          TextArea({text:"我是多行文本输入TextArea我是TextArea我是TextArea我是TextArea"}).width(300)
        }
      }
      .width('100%')
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .scrollable(ScrollDirection.Vertical)
      .padding({ top: 20, bottom: 100 })

    }

  }
}


/**
 * 按钮的点击事件
 * @param btnStr 按钮文案
 * @param index 按钮下标
 */
function doClick(btnStr: String, index: number) {
  hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + btnStr + '界面,index:' + index);
  var url = 'pages/ui/LayoutPage'
  switch (index) {
    case 0: //添加常用组件
      url = 'pages/ui/RowColumn'
      break
    case 1: //添加气泡和菜单
      url = 'pages/ui/StackLayout'
      break
    default:
      break
  }
  router.pushUrl({
    url: url,
    params: {
      title: btnStr
    }
  }).then(() => {
    hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + btnStr + '界面');
  }).catch((err) => {
    hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
  })
}