from currency_module.updater import CurrencyUpdater

if __name__ == '__main__':
    currencyUpdater = CurrencyUpdater(["HashRVN", "HashAE", "HashETC"])
    print(currencyUpdater.get_status())
    del currencyUpdater
