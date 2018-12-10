import tushare as ts

class AnalysisStock:

    def __init__(self, id, name):
        self.id = id
        self.name = name

    def fetchAndSaveData(self):
        print(self.id + " " + self.name + " 正在拉取数据...")
        self.fetchHistData()
        self.fetchTradeTickData()
        print('\n')
        print(self.id + " " + self.name + " 拉取数据成功")
        pass
    
    def fetchHistData(self):
        '拉取历史行情数据'
        df = ts.get_hist_data(self.id)
        df.to_csv(self.id + '_' + self.name + '_hist_data.csv')

        df = ts.get_hist_data(self.id, ktype='15')
        df.to_csv(self.id + '_' + self.name + '_hist_data_15min.csv')
    
    def fetchTradeTickData(self):
        '拉取历史成交的分笔数据'
        df = ts.get_today_ticks(self.id, 3)
        df.to_csv(self.id + '_' + self.name + '_trade_tick_data.csv')

    def fetchTopList(self):
        '获取龙虎榜单'
        ts.top_list('2018-06-29')

# a = AnalysisStock('603259', '药明康德')
# a.fetchAndSaveData()

# a = AnalysisStock('002909', '集泰股份')
# a.fetchAndSaveData()

a = AnalysisStock('000333', '美的集团')
a.fetchAndSaveData()

a = AnalysisStock('000651', '格力电器')
a.fetchAndSaveData()

# a = AnalysisStock('600673', '东阳光科')
# a.fetchAndSaveData()

# b = AnalysisStock('002896', '中大力德')
# b.fetchAndSaveData()

# a = AnalysisStock('600104', '上汽集团')
# a.fetchAndSaveData()

# ts.top_list('2018-06-29')