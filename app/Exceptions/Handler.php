<?php

namespace App\Exceptions;

use Dotenv\Exception\ValidationException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Http\JsonResponse;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Throwable;

class Handler extends ExceptionHandler
{

    public function __construct(private LoggerInterface $logger) {}

    /**
     * The list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     */
    public function register(): void
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    public function render($request, Throwable $exception): JsonResponse
    {
        $status = $this->getStatusCode($exception);
        return response()->json([
            'status' => false,
            'data' => null,
            'message' => $exception->getMessage() ?: 'Internal server error',
        ], $status);
    }

    private function getStatusCode(Throwable $exception): int
    {
        if ($exception instanceof HttpException) {
            return $exception->getStatusCode();
        } elseif ($exception instanceof ValidationException) {
            return 422;
        } elseif ($exception instanceof AuthenticationException) {
            return 401;
        } elseif ($exception instanceof NotFoundHttpException) {
            return 404;
        }

        return 500; // Lỗi mặc định là 500 (Internal Server Error)
    }
}
