//
//  LocalDataStore.swift
//  Shrubbery
//
//  Created by jieyi on 2018/05/17.
//  Copyright © 2018 CloverLab. Inc. All rights reserved.
//

import RxSwift

class LocalDataStore: DataStore {
    private var localCoreData: LocalDataService!
    private var localRealm: LocalDataService!

    init(coredata local: LocalDataService, realm: LocalDataService) {
        localCoreData = local
        localRealm = realm
    }

    func fetchFakeList() -> Single<FakeEntity> {
        return localRealm.retrieveFakeList()
    }

    func persist(info entity: Info) -> Completable {
        return localRealm.update(info: entity)
    }
}