鸿蒙State模型的学习demo
[文档](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/stage-model-development-overview-0000001427744552-V3)  
## 一、[创建ArkTS工程](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/start-with-ets-stage-0000001477980905-V3)

说明 
支持使用ArkTS低代码开发方式。
低代码开发方式具有丰富的UI界面编辑功能，通过可视化界面开发方式快速构建布局，可有效降低开发者的上手成本并提升开发者构建UI界面的效率。
如需使用低代码开发方式，打开Enable Super Visual开关。  

## 二、 [State模型的包结构](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/application-package-structure-stage-0000001478061425-V3)


## 三、 State模型开发
[ArkTS基于TypeScript生态基础上的进一步扩展](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-get-started-0000001504769321-V3)
1. State模型开发概述
* UIAbility组件和ExtensionAbility组件-->Activity
* WindowStage-->WindowManager
* Context
* AbilityStage-->Application?

2. [State模型应用/组件级配置配置](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/application-configuration-file-overview-stage-0000001428061460-V3)
* [app.json5](AppScope%2Fapp.json5)，应用的全局配置信息。应用的包名、应用名称、图标等.[字段参考](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/app-configuration-file-0000001427584584-V3)
* [module.json5](entry%2Fsrc%2Fmain%2Fmodule.json5)，组件配置，[字段参考](https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/module-configuration-file-0000001427744540-V3)

3. UIAbility组件  
UIAbility组件是一种包含UI界面的应用组件，主要用于和用户交互。




