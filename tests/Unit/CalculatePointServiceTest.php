<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use App\Services\CalculatePointService;

class CalculatePointServiceTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertTrue(true);
    }
    
    /**
     * @test
     */
    public function anote_あいう()
    {
        $this->assertTrue(true);
    }
    
    /**
     * @test
     * @dataProvider dataProvider_for_calcPoint
     */
    public function calcPoint(int $expected, int $amount)
    {
        $result = CalculatePointService::calcPoint($amount);
        $this->assertSame($expected, $result);
    }
    
    public function dataProvider_for_calcPoint(): array
    {
        return [
            '購入金額が0なら0ポイント'       => [0, 0],
            '購入金額が999なら0ポイント'     => [0, 999],
            '購入金額が1000なら10ポイント'   => [10, 1000],
            '購入金額が9999なら99ポイント'   => [99, 9999],
            '購入金額が10000なら200ポイント' => [200, 10000],
        ];
    }
    
    /**
     * @test
     */
    public function exception_try_catch()
    {
        try {
            throw new \InvalidArgumentException('message', 200);
            $this->fail(); // （1）例外がスローされない時はテストを失敗させる
        } catch (\Throwable $e) {
            // 指定した例外クラスがスローされているか
            $this->assertInstanceOf(\InvalidArgumentException::class, $e);
            // スローされた例外のコードを検証
            $this->assertSame(200, $e->getCode());
            // スローされた例外のメッセージを検証
            $this->assertSame('message', $e->getMessage());
        }
    }
    
    /**
     * @test
     * @expectedException \InvalidArgumentException
     * @expectedExceptionCode 200
     * @expectedExceptionMessage message
     */
    public function exception_expectedException_annotation()
    {
        throw new \InvalidArgumentException('message', 200);
    }
    
    /**
     * @test
     * @expectedException \App\Exceptions\PreConditionException
     * @expectedExceptionMessage 購入金額が負の数
     */
    public function calcPoint_購入金額が負の数なら例外をスロー()
    {
        CalculatePointService::calcPoint(-1);
    }
}
