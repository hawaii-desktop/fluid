/*
 * Fluid - QtQuick components for fluid and dynamic applications
 *
 * Copyright (C) 2016 Michael Spencer <sonrisesoftware@gmail.com>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import QtQuick 2.4
import QtQuick.Controls 2.0

/*!
   \qmltype BaseListItem
   \inqmlmodule Fluid.Controls 1.0

   \brief The base class for list items.

   Provides ripple effects, mouse/touch handling and tinting on mouse hover.
 */
ListItemDelegate {
    id: listItem

    background: Rectangle {
        color: listItem.interactive && (listItem.highlighted || listItem.down)
                ? Qt.rgba(0,0,0,0.05) : Qt.rgba(0,0,0,0)

        ThinDivider {
            x: dividerInset
            y: parent.height - height

            width: parent.width - x

            visible: showDivider
        }
    }
}
