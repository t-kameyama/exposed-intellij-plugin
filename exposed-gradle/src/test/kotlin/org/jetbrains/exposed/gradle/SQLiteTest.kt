package org.jetbrains.exposed.gradle

import org.jetbrains.exposed.gradle.tests.TestDB
import org.junit.Test
import java.nio.file.Paths

class SQLiteTest : DatabaseTypesTest() {
    private fun runSQLiteTest(filename: String, tableName: String? = null) {
        testFromScriptAgainstKtFile(
                Paths.get(resourcesTestDataPath.toString(), "vartypes_sqlite", "vartypes.sql"),
                Paths.get("vartypes_sqlite", filename),
                tableName = tableName,
                excludedDbList = TestDB.enabledInTests() - listOf(TestDB.SQLITE)
        )
    }

    @Test
    fun integerTypes() = runSQLiteTest("IntegerTypes.kt", "integer_types")

    @Test
    fun floatingPointTypes() = runSQLiteTest("FloatingPointTypes.kt", "floating_point_types")

    // TODO consistency between calling those numeric and/or decimal across all tests
    @Test
    fun numericTypes() = runSQLiteTest("NumericTypes.kt", "numeric_types")

    @Test
    fun longTypes() = runSQLiteTest("LongTypes.kt", "long_types")

    @Test
    fun charTypes() = runSQLiteTest("CharTypes.kt", "char_types")
}