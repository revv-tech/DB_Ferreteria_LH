Imports System.Data
Imports System.Data.SqlClient

Module Module1
    'Cambiar string conn para correrla en la compu de Fish'
    Public conn As String = "Data Source=LAPTOP-41LHBN9I\SQLSERVIDOR;Initial Catalog=FerreteriaLosHermanos;Integrated Security=True" 'Variable con string de direccion BD'
    Public sqlCon As SqlConnection
    Public tipoOper As Integer 'si la operacion es un 1:INSERT o 2:UPDATE' 
    Public camposOK As Boolean





End Module

