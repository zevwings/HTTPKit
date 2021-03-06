//
//  Paginator.swift
//
//  Created by zevwings on 2019/1/4.
//  Copyright © 2019 zevwings. All rights reserved.
//

import Foundation

public protocol Paginator {

    /// 当前页码，默认为0
    var index: Int { get set }

    /// 页码对应的参数Key，默认为`page`
    var indexKey: String { get }

    /// 每页数据数量，默认20
    var count: Int { get }

    /// 每页数据数量对应的Key，默认为`rows`
    var countKey: String { get }

    /// 重置下标
    func reset() -> Int

    /// 下一页
    func next() -> Int

    /// 更新分页索引下标
    func updateIndex(_ data: Data) throws
}
