1.在 Remix VM – Sepolia fork 上，可以调用 Chainlink 预言机。其他虚拟机上不行

2.Remix 中 Account 不会显示多个 MetaMask 地址

3.在 MetaMask 的交易弹窗中 **直接关闭窗口（不是点击 Reject）**，这会让交易进入“半生成状态”，**卡住 nonce**，之后所有交易都会被阻塞。（多次revert的交易也会导致卡死）

解决办法：如果是在真实链上，Reset Account（MetaMask 官方推荐）MetaMask → 设置 → 高级 → Reset Account
![](C:\Users\Administrator\Desktop\tech\web3\Web3_tutorial_Chinese\remix_question\图片\image-20251201114106307.png)

4.在 Remix 上使用 “At Address” 连接一个已经部署好的合约时，一定要先在 Contract 下选择对应的合约类型（ABI）。

![](C:\Users\Administrator\Desktop\tech\web3\Web3_tutorial_Chinese\remix_question\图片\image-20251201111634484.png)



# fork 模式依旧不能模拟转账到账户

## ✔ fork 只 fork 了链上状态，不 fork 真实账户的余额逻辑

账号的余额（100 ETH）是 Remix 内置写死的，不从真实链上读取。